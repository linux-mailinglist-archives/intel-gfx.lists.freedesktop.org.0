Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tWtvHTrwR2p4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2029D7049FA
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=PjraGoAE;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335C710F878;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34AF910E63D;
 Fri,  3 Jul 2026 16:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096373; x=1783701173; i=natalie.vock@gmx.de;
 bh=RlIOsp9amv9L3HtZtHUz95KGgDOJHWsKLA5hpSR/B70=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=PjraGoAE+Zdugu5d+EyKxKG6ya7zD5fh6ehY2mPmkAuU28y39kL/TbgjLOx+EsJz
 bvL2EfDTkjIE0F2VwTRhGTYhMlG1tGrDkQg3Zk93TvqxXqup/Qcpl4HPgUxoMtw1F
 vMT7y74c2gtzn4L1+BwcRzcRjLOt2D5MavVhmn8KP24PijrCv6Tw1Mlc2rg1PBnPm
 /8Q2NVTIcp3QDHrfpL2PVE/a+eNPNC+QdJCyQA3hUMiJQrjVO6AJ2bD05kpFjt/Pl
 XC685z6qMJaNXa0AFNVRMliS1TjswP1k42UyIXRJCGKuUt1ASMIzwRLFzKTlLU6cg
 BknUPwJW12hKNOrTgg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mq2nK-1xRNtX31BS-00oj8m; Fri, 03
 Jul 2026 18:32:53 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:28 +0200
Subject: [PATCH 08/10] drm/xe: remove workaround for TTM internals
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-8-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:ZeZV11GgCru8fytvte+sjtKlr+WtY7cq4tyrHtDpfBVat171dkk
 EdzbLowDTrYa1duZj32cAPvyXI8e/DqmVhUVKojTjuIfA/Cq84LIwmt+4FNsKZB+wOindlR
 5IJspUugrZaNzdkmU/UPFn1q98VFrQ9FfZzzFo2Af4qZJ2kPOdAAyqgZMHUbqBi6TUfC9LK
 dzDKHVrku0/RfwQ6fP8KQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0UrJk38FwVA=;QFw6xkEsMn77UwtwmmIAd0cLaWT
 THeM//DYs7oN69jSCEtUuciCbnNgbVi4na9MhpufhY8nj/YYBtQgMEW+a+viaeWVgCGjfxgBT
 AeOgmPxjId1rUFitdtGAzvlQVSReIsj9J/1dEO8g1tc0DY5DntYIdENnebd4EcK4H9QH/lQJE
 5qaU9Ae9fK7gk53k9L6tpR7g4t4VXwdmTX0YKwZzbsN8Z+QmB9V/1qpwyDWbKxIUajRxexHDh
 2B17cASeIAyHgKLyub9f+wl94tsD/l5n7pAhLe5mN5iwK0FSzYkK/Fl4iNjsoTSKc4CjMJSPh
 NoxFfyNvwpA8aEcz5u1nwH4jBq4iAzwNhwqMg7vqrEiQGmqR4T2Hla1gA+rYqYvEv+RwesYRI
 Gv9dtZKKd/FkLVQ87gEgFgc2BoHN3EIZMBuhhGwp0XCQt1ku1IIXi8El6OsgFaRuCi/c2edK2
 GvxS7GANQfXLZ9dy0GzlJ2h7TLMU4upkiRVsmwdfLBLMZ806f1Fd+3nAVBo68GlZdYVM5mXVg
 ukFl61RQ3x/3YiuCCKY1UYBe43gN7/YD+2CyGauCDT8+G3mmQJ7KWCYGkcnJFxn1tPibOIYVc
 GXGsLYuzJbCk0GMbr6rKapolE+TWPgM1AXOMbXd2+xMAm+aiIiSiBNbXXFMipdf3nuzyGB2FP
 VN4tEZhLnX1RVtRICfWf9nIL4ufVGC3pqxbUyfKU9aSAolc8ctjwcbzDHvRN02i2l15V4rHTb
 1JU9lDT67CVhIc7mB+Gel9SBZiKY2Ou9gLNXhZTCZsn24VN2qqEFwJ5Fu09RYzY8xPbuzdMQ3
 qCV9OcJydAKpkh6C3rhiTGf7MJuSfRncX2lr7gG2WlNQkF/o+COXIV7xkfaOKRlBjdHVUuAAu
 hf5J7XjgWZdJrTWkFqFmnuKJnQg5aQveTqD9i71+14+j4EdHKVker2YAbjj+qRNZxNrqUPLGz
 LaVX5+EGwNw+sveX2merQsjnRvbTUBmrATdsZmOzkZhNdXjfIzDt04ZvryxK3QWw+psUZPCJb
 m2dOlCkOqxorAIMqqMNo4JhJ3CoO9tSBswvbj2k4yIpgm4mXCnGu5JWxTjw33wlEyXK+7iiuK
 3FnC7olUPb673KFInvAThEvh2rQMVN7yb2bK0dwd7/CgCDkov4X3h+VYw8yFxPUShqAtONuHT
 cbD/KfMt7t9525ZVsZk7VDj/spv0r8f4LcUMQrZAXfEdcdTtXx1tD11AsxYdvV5XNc9q7yrhp
 eBcnd80jBdU20dDSt7fAUfVdiL8rdErto+8k6UavUfT3xsGCTxWcx+bM8Y9qjuxnoah3uB+KL
 2xTGFuKYmEOufAoaF1ZtEdFpQgPy3GfgCi+9xXgKUsL5pZdssDqSPVPW5SPuZitjf0M5EoZe0
 0YSl8+2g0KCvsCyyKY2TT0GR9To9/KSn9queN81z/6ePkA2qCVNHKP2DR2NFvCEHBALOvFG7H
 UyGyb+Gse9mRMDQhVwbEeHX82u3R15JDk6Hc2TsKhqu+i3pyIC0cHrGRGVChVNJNjllUJqELq
 agC6duQaJ/muPgS/K+gFhmjOkuJZ2cHC42Om0DC4oI7B+9wnEaS14Py/ZPTRdXEY7y17KEQMg
 gRCrlDF24UFRbFnHE09exRca4rNvLIOszdbus6EhSIloWjqPC7uml/heIATTaq0+N/aUMXoKR
 m7YaJqA3cAD168wzl/HPcXN9uUKq0m6vL5u6tIY4PtIkxPuo14Z6ZhUp9wiO2mJKoqab0APLk
 r/xRPDxSKSX+ajs1RK4BPmQ7jb+I7TRA/pnV+HIr1SbNn2bmWhYHKwj+dvTkOnodPimMKCJKf
 HdUp1tyAAiZG4QrDq/hu2VjrOLnjAeQRSIy9vH2cjaTaNuYhZaF3dBWcqHqFcHuGBD3ddGM+f
 7X9kD2o3dXGMv+ExTW6vK2ee4zgkzkGVUnI1XLXzo791fQE0oDvybF8ZSdnzMO2DDT3v18FTo
 hnAjt8NbRPPU4jHJS4zor8VJuOZ8F0LzpTNMuCfUtRur0B62gL50/PIS5bLuID7/9B0uFNvcS
 XbSzK8m6j2N8wyRFxTCAySW4Q8qLaOSdwRZBxtBsaiI41ZYOmpnLFoagPgDW5Vwp8ZneUaQ5C
 MkdV/7XdORVFyVtjwFG9FwElL5qBiot3XWe6RHwUooeZ2kaxLhb6+hBPNXz4cE9gMQCP1wfla
 rvAnx7tr291pV6gEZ9zf+qV89G/tta/M31IFe1zRIXQowNePvmGBgFqigVb3WnMHCu+Ti6+Ue
 UUUjzFWezgWwQ7EDlL61SkJUT8mFmr8WKAXYnXZGcIki7zRfZv+qEY9Lq740IrG/scLxe7qX7
 GVkvlcvn3HJOgfa1hkbnb9xsfVyYTiVOcDqi6D6YUlOztTtns9er6ZHAidr3JRNGarSdCCYp/
 JSrPp/JRpai8FICmW4inJCYjprmd+doS378AGN1lm+LJKx20QFhXhz3EqKJ7C+PHGt9b8j/9t
 Af+gTzrGweuvd8GgDfRnfz2ygQICWDd4Xs/Rk1Ss/7NFufuqFuGuzTgPQbZwHvAHiU3fKXPlQ
 jy7D3gadMcyPeB2lsFwMJrpWW7JfdITk05vgx4xnW6V1CmY/URrQxbh93WTMPO+HlQglInwJ8
 Ic0oPEX40ImlFAuPkWvnn99QwQJkgTly6/nG5Li/7kLWC8votcuIxD/kX2ee4fAF/LLOdGmbh
 RMvulNsfkLSGtu92BYCeMnXaer5nj9TrxkD7ULMntQ4e+EvfPlEVUCUu/sOTHHhMR/4LZRVbX
 gL5GgezP3EftvPorZHBBlBRKKrklTIGdr/MpKoSCV4Ob0xxisZsIYeDtByujb7/lshloSmDgJ
 BzdW7layL5NwCoZq7mP7zVzI8sHt/9eQ1bEeB8xPXVJluzKf5Uo4NgVVHp+GWlxRySP/o4UpV
 1HuBn7z59MFrGdWgbIGK4Bx4ngMEeRmMUzNT459FvUAoz1BCR2eIy6qe+5aoDwvqjmb2cK8Iz
 A6CRLSn9gVQyN4tsgD3d/K38ZElJfZ8AVMvSxQbbXBQ7HwcgZ2IOk909zijQak+DtFX3d+RnO
 ql4CVwJ6vyApQnDePSLcztnfqT0CbcIcsnBHxa/xhMpjzntvLe7X34oI2ZMNC0ANRhzBIb8zH
 KSplWDIrCEN/JUDAlprbbZAbbQSnTpRrufXSTaSLKDlISNp7Dy/81WoZfBLo8oPenFRcSJFke
 DbnFa3ncJ0leDwnQb/IdUZDH2Lxd12YK+bxRbyZXoCehx3RO7YYvrv8GFvP/icOzDvUhL7GVw
 BJHkj3mcxMpF7v867k0l+42gUTYmNDOVvqSTZfba/BnF/hkekQaQI4+IoV7Oim1shkyLbquuH
 w8NU2QKyLR+snCoB0ZlqyZo1TCrQrDc6XqvmblJA4bsAQA8E4CX/xLlhD8onpmq5eXEt6oab8
 EFeAbYhBo3CDVw1d3/hpotVjqac/bJnohLnHMNFCj28KEb3AYkTzz4brtCWW++N7iRqP9cd6X
 XodsAOHCL+sX3pS0AyqG01o8Y4wY1OOZwz+VKF8N7aEDwL2/VI1SC7KERdUNAgOfkN4lA9HU1
 Kg8uk8wl8Nai8YtSGDvRkdPQiz5TImKxyt3hJyhw5knhIl+4ZW8Qrf4mp/J6upoe3L/mORFCr
 5FSCuqLX1nKFobR2Rde40vasVEY4DbGUyvwumvnd2uj3PFpcO1QFQLH0XhojZ0vDU+sIqRsoi
 EuzH+XCmWEhjYXEESFq7mnLonZCCwV/spnEFpBSHACWHd0neXukb/e7/m0jqCrr4+oZ4wGf51
 MzXV7cPFVySO9EU+VL+InxqR4reh/zGFgSEWUyCYY7hZASWcUS3nE9Ms/i2NqXjfasHQFM7eI
 NruKFnSejF4vDKmnSMHuo4Ns18XnX+/IILJE1aHePlKwaPZu/UO/saSkopglRPXczg+XMQnXL
 Gh453bf4rvGVVR00HgoVE8dKN6N6c7sDXYCWlFkjM9bfxTkBvAu3qIv3kPkflpfehIEh0Roi9
 U4+7MlwflEy05K+n/rEKj1aVjAOs729f2xw+mhWYVTrffP3/bppmcpYUa/RZuD1DUgOc1hHf2
 5HGyenm/XZpWn/3MmDGcbJqVmxGMxVK0vgyC4bJEe90nyD4C8BElhtp9xFczRa5gbZQTARWau
 pNcMVTTiuIIrD8XLpPuOHS0OyvtliEuY/f5M0GH6CUn5EZYZt/o2aO7/6WRuMw2hmB2wDW0+h
 z41c51wumbfcCri2fsDJYlO4BkAWRKkz37W7NZB0MfrfPrlGjlbvfi19qXzQTR+jYHfzrHIwx
 dSakMhm+QUkhkv58LUOtxjbFazZAJnxZw+cdf1DW5ehNWAtqeQqlBQLLlDk4MCmgfbGI2sj0T
 6ec8FvSc9SIpYlOiFpW7narTxIhkM0giTtUCX0M4DCOx/EaK1obzZ/x01uxqyEJCqze27ETrp
 JOft64UHder4EywA8aqkqbqTyK1HueWLqu81KmDDHvX291M7hSB2YC4a0kQB/Ljx3+h6NgdFQ
 Is3KwfTsUD//3FLVlb6/qtAsF0KA6Kbdb9mENZid9i8Z5uub3bC6dPTn0c68O1hKT0+KUTMSF
 Cs75Mtom/tX99MVXbusxBtSkAR7ySBfbjd0TpfK4ALnyCxjyABEM/NchFq3aDKKz9eN5IiJ+C
 ub8EXsMoo6cqv7Do8nWoMxQGXDLYzAyPMa154gGqONATJ3YVYT/XzyYbG9WCot/kTEpXYjQU1
 0MeTD+SZCbOASrQnoDOf/GTLvipB7BWDO9PVXtK/xPm+W3MSrRx/xOzMyJ9DApjPGY5qNGcVw
 m5W4ECyo6Iqrt2AnDjvDopggSy74U5Elmaxvi6c/jqpIJ2q9Mgt8byOoIiYZdj1kdpy04EZHc
 DnDhKevBE9V6mC5OMTIP0vkq2ZpCAMqrGyrIqh+2yMXXulDpIzDDgq0hU0h9/t93CG7+8273J
 oB5q20yQLvEHne6fW+6o/2rjXktnnWlHJSP2CA/WX3SJlG+MvxGCQzUq8bIm7PRHmPhOi1pCt
 HenBmamN/co9h4E+H8bC4R1WHDWTJJoUEx+I5ff3/2tkj8X3hA85xlVOwDEDUnPbQeUOzo82y
 vduawE2v+cKVyNnba0FxhQ7O003BMqQVnZKLMntTPId35lf6hlC90gBQiSIU8DfUMaaFflvG+
 ZhC89nNYQKbVwVp5CZHHeIOuNRzyflUyGwUyd/8R5y/YO0UQsUE2knhgHJp7AerzBTiCFrOGw
 2CRYvi6xmDyn0wgw+bAbGi0TSA7l8RzpXvqmft4DhsyF98x2ggb6G3Kq83pBEPrCvyTJdiGs7
 is75JWjUcGc2jLmnk3eRY8ZyH5R9NYcUe/IF8Yv/JRw+Ys2tpytL6ilYZ314jtmQdcq+0MkJo
 qoS92ZEkTpe3zOkmtJkp7lRoyCpnAitWKb3wCHJAXqBgdUDwUnV+RxoaCfQVmI2lml7/gDlDZ
 +ZtfYs6LpZSi6NzCIMzDtu8/CignRuZcPb0utYuEG8Zyt4jXrDDt9lyQm/lf9NLspQKP8Lqzx
 XSnV2uK0CuHBt52jX7+1OZJnEOB163uBb6/iMmozjGmRENKgPfpAJx1MZg7XJt0rUEhWBCoJ8
 lzFOignQnRbIMDUfITDbQ/dqW7Wiwp63JljbtnPiyw1X0GgaxmdNGRcfIkq8UyEETndtGb1T5
 bO10889RBj9yvpcbKE=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim,amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2029D7049FA

From: Christian K=C3=B6nig <christian.koenig@amd.com>

This should no longer be necessary, TTM doesn't lock the BO without a
reference any more.

Only compile tested!

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/xe/xe_bo.c | 32 +++++---------------------------
 1 file changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 5843f850339c7..34eae56716076 100644
=2D-- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1642,31 +1642,6 @@ static unsigned long xe_ttm_io_mem_pfn(struct ttm_b=
uffer_object *ttm_bo,
=20
 static void __xe_bo_vunmap(struct xe_bo *bo);
=20
-/*
- * TODO: Move this function to TTM so we don't rely on how TTM does its
- * locking, thereby abusing TTM internals.
- */
-static bool xe_ttm_bo_lock_in_destructor(struct ttm_buffer_object *ttm_bo=
)
-{
-	struct xe_device *xe =3D ttm_to_xe_device(ttm_bo->bdev);
-	bool locked;
-
-	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
-
-	/*
-	 * We can typically only race with TTM trylocking under the
-	 * lru_lock, which will immediately be unlocked again since
-	 * the ttm_bo refcount is zero at this point. So trylocking *should*
-	 * always succeed here, as long as we hold the lru lock.
-	 */
-	spin_lock(&ttm_bo->bdev->lru_lock);
-	locked =3D dma_resv_trylock(&ttm_bo->base._resv);
-	spin_unlock(&ttm_bo->bdev->lru_lock);
-	xe_assert(xe, locked);
-
-	return locked;
-}
-
 static void xe_ttm_bo_release_notify(struct ttm_buffer_object *ttm_bo)
 {
 	struct dma_resv_iter cursor;
@@ -1680,8 +1655,11 @@ static void xe_ttm_bo_release_notify(struct ttm_buf=
fer_object *ttm_bo)
 	bo =3D ttm_to_xe_bo(ttm_bo);
 	xe_assert(xe_bo_device(bo), !(bo->created && kref_read(&ttm_bo->base.ref=
count)));
=20
-	if (!xe_ttm_bo_lock_in_destructor(ttm_bo))
-		return;
+	/*
+	 * This should never fail since there are no other references to the BO
+	 * any more.
+	 */
+	WARN_ON(!dma_resv_trylock(ttm_bo->base.resv));
=20
 	/*
 	 * Scrub the preempt fences if any. The unbind fence is already

=2D-=20
2.55.0

