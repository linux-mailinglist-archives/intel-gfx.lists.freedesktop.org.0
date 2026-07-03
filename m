Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xrDZLjvwR2p8hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FD9704A03
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=VJY0Gb+5;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA33F10F887;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601B810F85C;
 Fri,  3 Jul 2026 16:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096706; x=1783701506; i=natalie.vock@gmx.de;
 bh=le/+4LC5/saAJAT2TchCTLPEnbQcchYmomXsBOcv4vE=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=VJY0Gb+54KiZiafYigDOFgthsKYbC0iHyrhQEFXp3PbK+nrHXqCRMYihcv0pibkm
 ukGgyWZz9grds3+0O9HabQbEA//WhavRdAR+xMqMpjtGiNuudbORK/tB/j63o4tLT
 yc5W5SX/q/p01ix8s5mAcy43RvjI0qeK03PjLCfOAroxxPKpE4LRYmdzYtNG3BumY
 NHlLXryA+6QxcTEZaxnCRg3jzeaAPKY5DqE3UN/1GXzU9qbqtLkSwItOz+jtlLEVX
 3PWgu8QfeqEuiJYJG8DAoq3k6/AyRWPJXgNmTkHwSeEfQ9VbwPsLaEq9JeViQqs2v
 SZEtP/39nApuThU8Kg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MLiCu-1wO1Rf2K00-00KUis; Fri, 03
 Jul 2026 18:32:55 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:30 +0200
Subject: [PATCH 10/10] drm/amdgpu: use drm_exec during BO validation
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-10-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
In-Reply-To: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Provags-ID: V03:K1:nU9/uYCOrtgAtVdp4hFdQaqvYGdQXzNY1iKWoYGNYkWEXFKYeTp
 gih/inofv97+WAYIWr8pX6T5f7gunoUgcQHg+9E8edQDhANGPDGj6RCc1ABfJkzew69/vs1
 tpHmUTHJ85SZX3Vx+mul7c8gMaW4mCqmWLmoyE9/M3RVIyWNFkA5ejhtl4F5apJbBDYgfib
 uiS3M8RqtqyGEfmKNgmxA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:IwhRkNGRGFk=;OZj0NYVXEzOymYlidPruwnpqMDj
 haYPgF09RK3aDkf1nFkt4zwyKO9A/gVywfQuNa4r7/Z0qO2zhhKu4KEkzBCr0pDztYUu7ItAo
 TcIm0FJ/6346rASoz1GcL+eV4taHfT9DD1wj6jYbETwLNwOsOCm9HvdumNTrYebJc/j9D60c2
 8YEY7lQANz0Dbv1XuURBhBSRqndPmIyA6FoB4BNIjU7cq5utSUrWf0xVwRyD+3jgZptskQPLg
 uszNwalwXKUOwooVeKQ7yjk/NpYqjNiuZomcNQxhJqCR4dckgttHgmgIPUCplDq2uE/2S+/KX
 kfQT8v8qbbwA6hT57ejyztgsJRWg5rnxxgnmMXlWKrTOrwVHL57DPf0t6r4XiG5KpQ3hzq1uT
 YhTjQOJShPaEoSJ6v+bVm839+GKi/4XD73oKSc62AtiXOUK1cgAMHDxiZHfeUEgDbFV0Qoyq/
 8VKqufEiU1grM1qAkRwJJiHG4uBtyYrkoeRGeHAZcj7sO478y9q1ZRe96Awt9mPspUxyF+AH6
 Z5I6vl+2LMGK1D4nocziGRusi9q1Ctv2pSIhTkrLgMw7LC20B6zUaIlHmu7FPcwq54rQCZutK
 ab7iifueaoHBHd+RPP0t9BsNxmYsgpKujTOmXsVgIPL4/1NX14E9jE4jtGQ6ICfuyw+ZLkbR2
 gN0NY2VwovEh7aNVhddON7yLnVlF9NMJlRNcw27Jub2Owj5NbxruQ160Sm3a9ffx1G77OWKS0
 8ZUJQsaHeMP7/QIO2gh1kH3Vgf04jXvB5wkle83KLksFtC/b0YTI8q0e+1mx6nmMgJzDPuHoJ
 l07UYnn2sw6FCtzfCpMuyWGZmkvUFRWjnn0RV+//+JPGXwE876d4VPOyM5yJsZ5wyB2LY0B6d
 dtX1f8MxF0NCnNyupT4MHPDbXfKgOVQ+Ht5LiZFryzLYM7PWqRnXaXhQs66ZR75MCv+ULk/Ld
 L8mXGaKlmpwoks58/L1w47vFx6o+fwi4+9jQnUNHyShMKpwYyff2Ggps+d4dB7oFKZWG7QD5y
 dOYmGIO1Nih88l05v32BGp2FdOE2LismhPKV5BtimucKhXGFy5VqQamXXXaKsvMn8mZ60CTyr
 7EQ129d4nvn6rHyqfr6/sWzc4H2QHZsyF5N2QqkN13/aTWOyyvzgpCribggazI798F7o+HQSV
 uL4bD5B6a0B0V+VDSQxarh4Z6T1GfCPr7s38FWGW/ow8IZBen98auOXP/wXNVlK3YnzB+vD10
 O3XKBlcHtwcyfoYWTVc22yZqpNm3ST82iH9pdjCN37FQd3TtE2yw+rk6gp0LMn0m0ZXYDl9eI
 EqXodja6vPc4kmLR5pFUYaHxFl1nRot/3y3Iqts0KVcuCUyJr2p8C/RQk+hX1pGNSNtycWZQM
 pDEgFPfVyjjglJQvEvHpQ1n8rWWTKd7Q/DEw9pgvbu/EuDUltBsSqj82w5k3etxtiELpCMUVp
 d8FxuZiGjRzIwqt6UlWS8RAS0YnKzHHdKNdhc9QNv99zlHQ2zpoPqa41oc76oWpCQbTDZ+dRY
 bAvy/G8YG0mcnOYa5C9x9xuUVWm/bdZ0FlgOPmBtZ8cqGhWt3cWdX+eUjDh5R+jv9j2oaEZGf
 7q64WBiKTdXwCTQM9SgceRy7l+QYhE7yWZFK/RnwzbmxIo6c5fwrbnRAaWlPDAf5EI2VuSLyT
 cl8AB8TPjP9usPYswAN+Al+vKEhbQWxHoKBQGn2pZcjGFRwlUZSMrBOdm5ZiU6ftDY1z47gja
 GmTGsSKRuluPC+IaBHP2i14SznXWscm8VWOglnEKuf0BlEncFxgXoXzBRAeoTqetgNh3iR0BV
 OR3MJ3s+9pLjdB8C9VKEZ3z7A1fo0L8FMf8Bgd2Dgwmp5UEfoGO4ObwnJos6P5me0wrVzoSd1
 mkrd5bsZIq0SRTh+OFlOOuG8CZR/8gwauTQ7H4fKuJmzcCk8gLhOGSZSJZY6SowiQJf4ZVeXH
 LFJGe/laOF0YWXRo752+4wLdHpJC4yIIFWfkXMIu3nmHIYmUMs2Ot/T7r9S9s+9p4s8eRxIAq
 JgSpkfw8u+rmYHKAZVSAVgDsRhONEtxfTJxR8y62vj3XPgQgkh8id6QsA46ALeL8cUu70/r33
 9gdlZI9oZS42dBk2mh5bigJ2Sr6ILtZJu9emeXDy/A+0jwxgNdzb9SLeNm1Zl/dlR3Fzb3lu7
 B9MPl4Gf8KZx3OMyZIkr+RlJ5DEYkcBrsBrzNjdWNphT+4Pe+8wKznQDCHN6NOz0mrdN/u0Rt
 iuTjcVnRwvLk8QC4OwulImsn1Cd1ucXWiiEGzYrA5uY1C054qbpzI0LWikl4xLuQq6K/HnjDP
 EqtUpMOnrxseZMnN0k2FFkcjny31xFwU8D/ULRz09eozxrTzxavQk90HkXbtKYzQL5SW4/ef4
 0eEM3bRbZMnTb8Ypv/6tJZC27HCyKii51RbwtOlSo0VOyErNooF6hADmb12jrsFn0rz/m9uyq
 1LK3zpHqxfdIsqBGrexLR6EOhh/Q9eIdEcogFpU3/nR33m6R0r+nq1YS+8bnI1HmHI/KHk8Dd
 5aWoRheh72qTX0r7u6sOkXM+kC180ROxOW27TFwK/Bj+KEpbZ7B0KlXuzcRmX5wmml0dnxhg+
 tXRBvyYvxNVckXMkSdH7POJpQI3PFwQIviut0yzHJks0hVERxpH4L5pQfPkqHdkeWVREhrdKl
 wWgO97opeZUf+O40AKgiCnWXYyqCwqrxnn2LPiTm+jDyyglBvcYkthJU/avE2+aTVVZCymJJu
 ubiDVvPGWq2aNhzafFExvjvBQavqqmA75ZqM6bw9iMW5fgNMh+qlFBH46RC8swxpMAMHUPrJF
 pZkDodwJKBZlGFUcbpWw4oAploMUshAVeQSJ+Eq7/xZzeMToOS8IXg2KHt10tyslBFCaOh6ma
 yZUDlOZxYHynWm9tFDmnAezUXF8KVvRAcncoxKdvriOf/KlOF+YJhZyqb7lzNrOPPk+y4DxUY
 ZT95dqHZquVTSv/teF/V8lYrMPD6+op0a4fWXM0UkpYbmKmUjl9JM618UMINkb+RHCvcWOyJr
 HVmX0uzAMRR16IHe5yqzmLw4kV/lrkF4bZny8TSSWW8Ftn+lh3kWQk4qK34wP4PFGkePmG3AG
 qCEWtARkxakzLF9n3ibgMUGP0EaGVD27aZYbfqBJW31Fan9jeYrJoWEB/syxnBHhZwWvv469Y
 7W9fNVpYQYH3bfdWigGR8PKOwQJ1ydCCM7bDjKCM5xUeQcInzIul3gpwpics+0NcQoaqHkx8r
 pEOJyXMlyVcTRpLueC/RX+T/xwhaN949XeETmnIZkPGsiYLy22QxCNPoH3mSS4/ljdDJucett
 /DrPSlvFm6aYj3a/JbMrI8O60OvdK736S7nuT7yBZwO4CyYfYLiUxXkG/vQghP0MYgDJT2S46
 18dfthGMlbrjWMBKn0ZEzSvy9ueBvWTrTqG0xWMJpoGsm7G1YF2CLAGdH2K90eLxqewEdizhT
 3UacmkS/Z8J9POs31ZWtvfxhbgDRpDq6fntAY5qwfRYTMK+DFdRoWHAooFv4YA+iLbV5SuXgJ
 PLmqdsyIJC9GXjSMkNuOG1jZ5Dh0M6Vm9ou7iWYI5Z7SDbH5l7Ca8g5fbUIiE02NKpZXgX/Cw
 1dd+58Gzjz8hehmceANTQld7BcQHs1cNkA3uAq/soPW9dnVtT8ZsY5hE2W0BN93gkJz2kzRuf
 bNSYKeqeyOCPsPCHtUNFOmEWZ8CR4tywRsoNEmopFihmUqmB68y2gQyJUZkWMsrBY93IuMe9V
 ocAxZMbf0vmby1S6BKw2P+o+pTtBAEqrpVfQMDzWXIxyzs2/nfM1bWQkDTHLzh5LIkCGX7XwC
 GPqD9pDEe1WHTWsKdkwX/DKdqOQBIBY6kOxiJl6RNO7CuNVAl5WkvCpBKHaOmH2skIc8j8pUa
 caHv4/CXbQGqAOrYDW06Qc4Pnjca7B3wck/zTIcGQaZzZBz3OGmg8LwHrfq/zj8L8qg1RUDzX
 1gJqHyXmreCLSZPC3hYBKRJ+ijzxpknEKsSIzhv7ofQsxeIr6JHrrmbB1LujB2e3PddnTN2Zg
 ZRjmjEKnf3aiqER9akSY3QlV8p1kG8fAeOR+aDOGJPYJNtqF1JuV43nVTK8zAl/yIBy+RNfwb
 NB7jVThMQmfy9XwV/ScO+8sXQvhQKWejgeqtS7s0PLJFplakV2zn0CDANSTVZNGj8DZPSE1w6
 e4nPpMUyPsYRb0plBOfMletNRjmQLZ6t7f2YY2JxXcpqdxSLb/+JGWWT5Hbg6I/qtaS3PKxRB
 Lwp774TYw6yJO5NnQjJrbftbRvBqyzTuJa0Ggwsp+hp9qLqfGKWcn2B4eazPKauLkUlgyzPMR
 QFBqmcxq6rYsiTrKLu5yHhlrObPj7PeVneaMLA7ggGA5RvobtK6Q/RuVmRRdNIgd6xZ4mejZB
 5Qn5wZQ2DkXBR4oyCAqIjhU7VmoSZA25nvRFHpDcMJPpwH7dyjOKUfyhXfPAgIAW0Fi85xC4G
 TLMxBVBzY9qTm4AUrNyXpZ/xzT5tEYeiHmx42HmOSFHe1Rfmw+8jhy1yLYSnns1IeSlxbbev2
 7wUL94emyn2x+GwC6ZnopY9GFSPh1V8e9Af5BaURtZPRdK61qK2IwnNEhP1Rjs57W8VMkjfim
 hz6qx1Ahb423cowvObs60JPvQXj1Nzl7yBvG1Ckn+3I3VA4DLEGeXn6YLj0Vn0A8BFdyT1WLB
 i3KjmE1EemJMQCLNPa0ziuD+DeUPNy9mqfWuYmXEH22118Z9m9FfPubo/IDnX+DUOjWggU4Mu
 UTibx0s9xpbn0w7UX/zoPbAgkpYdTR6xwX+ivjNai4GOdcPGK00TKITyJBuGatm2ToEXsX8d/
 rQxYPISbqmKRO/uwj8xmf780MJBCsURtwwxKk9GRXAOLBHi1HMX+I/k1JL74M5xMe4mgYs4qc
 AtzI4y8pYravi1cuZpLor1N6sLUlEDdaSpVRfRb4fwXzzcst2rz4quUC5Ppsp+H+QwjuJvLVh
 4g6zV0ImTNtrOJYhvJZPW7gOhw0x5ueUsLe31dOjgvZ0QTRESWQzuoqoisr3fmhnzzAIXSzsU
 W90RWumOajtOGfcaDfL2eXG8ppcl7Gz+zcVwmJvmaNQ4v5QdDYogua7zyJZb+TtTLDpi5tzP5
 0HtAjtP/RMk9Gh1quyD3lg3rGrTFakR9WPMP/CQUjG4vbD/PJwjjV3f6dORVqusd8cNVZboiB
 58qPfsS6cOFbSNCypY352C2Lby6sB2HhO7gUz1iBIwFOanAGLmVX+MdJTlN+tn87Y5AGXn6iQ
 /j2nJW9mi75WGZ6VxeSmtFARcaZ4OSCxYQJrNQ+uhft7ju3rDZlSn8LFX1DIn6DoGBHr/IVOL
 MeV0qDBltD7v3xbix7b8s0gvuxD7579WvTmrSlGjIF5WcwzMygrhUab3hDLJKj6VOLNLPtrmI
 JsXaB3iou0rMIeUzrWpecnFui4t7GQxNmKa5XXz3UbEAolmB1KPDZsl7tSS0Af+6thIq+n5sU
 zMtu2qMZ5P0wkqzdpT+uyNgGa9h6Aiw8XDb0hmJxehMzwuIbhtIAacPeoHdFVtSGPVDqmYWc/
 E+IiRhCXeDuFLiKMPWvNHytydGo5I61xKtTFn+ak1GM7UCWPtIL/AEL+KjXGzrUgrYtpVA==
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 66FD9704A03

From: Christian K=C3=B6nig <christian.koenig@amd.com>

This allows to detect deadlocks happening because of resource
constraints.

Especially submissions which want to use all of GDS doesn't result in
sporadic -ENOMEM any more.

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 80 ++++++++++++++++++-----------=
=2D----
 1 file changed, 42 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_cs.c
index c2e6495a28bc5..052d41013f7a0 100644
=2D-- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -793,7 +793,7 @@ static int amdgpu_cs_bo_validate(void *param, struct a=
mdgpu_bo *bo)
 	struct ttm_operation_ctx ctx =3D {
 		.interruptible =3D true,
 		.no_wait_gpu =3D false,
-		.resv =3D bo->tbo.base.resv
+		.exec =3D &p->exec,
 	};
 	uint32_t domain;
 	int r;
@@ -845,7 +845,8 @@ static int amdgpu_cs_parser_bos(struct amdgpu_cs_parse=
r *p,
 				union drm_amdgpu_cs *cs)
 {
 	struct amdgpu_fpriv *fpriv =3D p->filp->driver_priv;
-	struct ttm_operation_ctx ctx =3D { true, false };
+	struct ttm_operation_ctx ctx =3D { .interruptible =3D true,
+					 .exec =3D &p->exec };
 	struct amdgpu_vm *vm =3D &fpriv->vm;
 	struct amdgpu_bo_list_entry *e;
 	struct drm_gem_object *obj;
@@ -922,47 +923,53 @@ static int amdgpu_cs_parser_bos(struct amdgpu_cs_par=
ser *p,
 			if (unlikely(r))
 				goto out_free_user_pages;
 		}
-	}
-
-	amdgpu_bo_list_for_each_userptr_entry(e, p->bo_list) {
-		struct mm_struct *usermm;
=20
-		usermm =3D amdgpu_ttm_tt_get_usermm(e->bo->tbo.ttm);
-		if (usermm && usermm !=3D current->mm) {
-			r =3D -EPERM;
-			goto out_free_user_pages;
-		}
+		amdgpu_bo_list_for_each_userptr_entry(e, p->bo_list) {
+			struct mm_struct *usermm;
=20
-		if (amdgpu_ttm_tt_is_userptr(e->bo->tbo.ttm) &&
-		    e->user_invalidated) {
-			amdgpu_bo_placement_from_domain(e->bo,
-							AMDGPU_GEM_DOMAIN_CPU);
-			r =3D ttm_bo_validate(&e->bo->tbo, &e->bo->placement,
-					    &ctx);
-			if (r)
+			usermm =3D amdgpu_ttm_tt_get_usermm(e->bo->tbo.ttm);
+			if (usermm && usermm !=3D current->mm) {
+				r =3D -EPERM;
 				goto out_free_user_pages;
+			}
=20
-			amdgpu_ttm_tt_set_user_pages(e->bo->tbo.ttm,
-						     e->range);
+			if (amdgpu_ttm_tt_is_userptr(e->bo->tbo.ttm) &&
+			    e->user_invalidated) {
+				amdgpu_bo_placement_from_domain(e->bo,
+								AMDGPU_GEM_DOMAIN_CPU);
+				r =3D ttm_bo_validate(&e->bo->tbo, &e->bo->placement,
+						    &ctx);
+				drm_exec_retry_on_contention(&p->exec);
+				if (r)
+					goto out_free_user_pages;
+
+				amdgpu_ttm_tt_set_user_pages(e->bo->tbo.ttm,
+							     e->range);
+			}
 		}
-	}
=20
-	amdgpu_cs_get_threshold_for_moves(p->adev, &p->bytes_moved_threshold,
-					  &p->bytes_moved_vis_threshold);
-	p->bytes_moved =3D 0;
-	p->bytes_moved_vis =3D 0;
-
-	r =3D amdgpu_vm_validate(p->adev, &fpriv->vm, NULL,
-			       amdgpu_cs_bo_validate, p);
-	if (r) {
-		drm_err(adev_to_drm(p->adev), "amdgpu_vm_validate() failed.\n");
-		goto out_free_user_pages;
-	}
+		amdgpu_cs_get_threshold_for_moves(p->adev, &p->bytes_moved_threshold,
+						  &p->bytes_moved_vis_threshold);
+		p->bytes_moved =3D 0;
+		p->bytes_moved_vis =3D 0;
=20
-	drm_exec_for_each_locked_object(&p->exec, obj) {
-		r =3D amdgpu_cs_bo_validate(p, gem_to_amdgpu_bo(obj));
-		if (unlikely(r))
+		r =3D amdgpu_vm_validate(p->adev, &fpriv->vm, NULL,
+				       amdgpu_cs_bo_validate, p);
+		drm_exec_retry_on_contention(&p->exec);
+		if (r) {
+			drm_err(adev_to_drm(p->adev), "amdgpu_vm_validate() failed.\n");
 			goto out_free_user_pages;
+		}
+
+		drm_exec_for_each_locked_object(&p->exec, obj) {
+			r =3D amdgpu_cs_bo_validate(p, gem_to_amdgpu_bo(obj));
+			drm_exec_retry_on_contention(&p->exec);
+			if (unlikely(r))
+				goto out_free_user_pages;
+		}
+
+		amdgpu_cs_report_moved_bytes(p->adev, p->bytes_moved,
+					     p->bytes_moved_vis);
 	}
=20
 	if (p->uf_bo) {
@@ -973,9 +980,6 @@ static int amdgpu_cs_parser_bos(struct amdgpu_cs_parse=
r *p,
 		p->gang_leader->uf_addr +=3D amdgpu_bo_gpu_offset(p->uf_bo);
 	}
=20
-	amdgpu_cs_report_moved_bytes(p->adev, p->bytes_moved,
-				     p->bytes_moved_vis);
-
 	for (i =3D 0; i < p->gang_size; ++i)
 		amdgpu_job_set_resources(p->jobs[i], p->bo_list->gds_obj,
 					 p->bo_list->gws_obj,

=2D-=20
2.55.0

