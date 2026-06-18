Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BKixGNkORWqJ6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C216EDB21
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmx.de (policy=quarantine)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C8B10EFE2;
	Wed,  1 Jul 2026 12:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7955C10EA25;
 Thu, 18 Jun 2026 13:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1781790578; x=1782395378; i=natalie.vock@gmx.de;
 bh=214Rkrq3MZxB4Tuclo7iAh0ctM7uS9FKhdix4KEbtY4=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=f0WsE3bLdSgMBPpIicANTFd7VAsf4oSHauYoMyfJrOXZrOvsvryxOErmjr+6U3OC
 6s4rtp54q31IL+/YG6SGBH5ZU8KZ/+m09iqjEBqjowYTrlUDwwMUMNN1uIJqmKuqS
 EGxYoEmYtQ1YXZhuv1tmBH4n2rWko84vFuvDL7cFEGpoL15kD8bN0qvBIa1p06htr
 0tdT3MIB5It/FnvxZbf/DB1NlolMp9GDXRltDkOC4ybqcNPQDSrFU9dsmhrk281Ot
 4lqHCI6vAssNELVgtAravla4Ob9QgE/NSvBdbXwrGPn7QT9UJpbG6si6xyDqpHBP+
 gSFLA/jyw31/FbY+tg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2DxE-1xKifE2oPe-010Bvo; Thu, 18
 Jun 2026 15:49:38 +0200
Message-ID: <0884b179-8ecf-4cd0-b411-845a2afd9ec2@gmx.de>
Date: Thu, 18 Jun 2026 15:49:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/ttm: rename ttm_place::fpfn/lpfn to param1/param2
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-US
From: Natalie Vock <natalie.vock@gmx.de>
In-Reply-To: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ZwFHcXYKcVTXtYqXYE8ttjSlyvQLZ58jpqiI2Cn0TAAxh3PFVVH
 3uaVMo9ESxNOXjFC+dJA3h4JDLfV3dPRhPK3hD/BAzfTBxkJX2FIuTSKYDNBnnS3KhdtRpP
 WDcoG1zYz0WwQr83/ZUPatfBnnQTvOM0PsVza99h3Esdp+QVrncTAKbO97Y+gRucy+7zXV0
 s162/JtTn+kmAs1tUd5gA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:76WdWoblZB0=;dWh7QXwoqNogMsaLDLuZagUGwWH
 v/6HG04IA1mA2rbTVJxcBK1xuSZjjU17HsXbbFsmW0m0PhmtHldkrmTu25k6Cm5dwRSPJzOZ2
 07ms71awlOoTadCk6iqmaKWnHOAm5aUQFgxodd2Ovyqh75wvDSdZABbUXpFJAv9h/BQ+aC1XU
 iIUxnhVTGOVukMWvXplRV2gwGUkxcR33ebd8ry1LXjdNeTxz73ubrbLcKD3ikw1HNwtdILeQT
 2CjyLA7KES+71Fut76hhScGmckTEJV6SM6+9R1xe34lcV4eSRojFYDMsiTkZGaaKr8gKhGaPD
 ZNlcTfvf+ik7XITfUnoH18eUH0v2fOJnApiPaf29CvPrtujYNBy5iVuhNLSd68B/vV+Dq6vRA
 rzSX/4ITczeYemesmQBWokfM0MO0u640q1I+SwQtwAsimke+gEOr5/TXoPJ/QPNgWdujLB+p3
 PMlro4Z0cPzUX2mmJHosHmfSiC6ZCZaB/jidAxA7IdIVkz7HqzDUCi8V/TPKWT6HVGGiELKEg
 s8zYjuK3farHUuOTiP9dbnj96fhNPT0la5nv8eLXPlZdJvUx+LvJ8chXvd/BfaJG66ubt5VIG
 Ol4a8kn8d1108GPqt0RQ33hSXnyR5B+k+XIMLekcSX1odMaq3McHbIcUUyKF8cc01FIEgevNF
 lqFpZOaXIf+MEZ1pUL9wZ44B+YHHhrCZ2HPJfnk28MzcEn9ja+NZ/9PfCE4Dcio8Wj+0sD7k+
 MNUFtqvluvw7B7ZX1e//jR8iFQ96AQU4HavlSTag/rvrtb1WUJqQj12yU8Ojakt/6uViie6Gk
 e9gPUgivnw+VivQKl8C1iMoKZX0ZOVrejTPKAT0LCPaJloL6scYhXK3nflkCeDn4REaQXx6MC
 bhcV3EBCF5qmd/hjTMAL+8edi8MPFhfUQdLG7paDyM1n6CGpDYvpZMPJkhGVKZLW0EvTKZ49R
 cKYbRNLbaqpWpJSJ3FM9+C8PX8DKRukNeuSFGBP2ML8/bSdjnBm/hzPAuWzvGuPF0kowH3OBG
 FF/bu7l0C9tbWlJ2L8DNJTII1kXI28yOocbDt2H9rxX9pAwOFL0QivbVXk8w5ZzqipqRlL0n7
 SOJr1PTRMb7bgBCv0qlgqsWMsovl60P7Z82phDtiLyvWo9vY6VrMpoxcGHTreOnu+6oMMIKXG
 AlxYxzW4k0rk4vRodnwaMJUkEqP9lborfWjwNpYxV2wt6V9jQa6CmFf9ZYogv5aMJTXLt9oSU
 SosbaBTNHKBE9MXjZialOLwFjseZiGhVuyupNTW3MBMSCj2VU2Rfqal2wJHRLG/smzeoW19rc
 F2PdIIiPpl5EHkwtUPgw+WmYZJzK7QyLMjPkq0X6QyqRvb2I9+KJl55ONc/60dqlg04y252/z
 Qzhq7xDKN5nM1FEUTovx67XSvlyWyQtha4fsWzL+3XseZfYHM7mbeHOb2xjeTCTQ6vJOxUsrH
 aTp6Zp+ol6hJTj9YPhorNlPL9LfWVfXnZtghbh3EHXyDf50UFnCt4GkVqojib5g5iHe9vzv4U
 tn69qtqQxx/xjBn/w2rJo+lFHQYKQHUAxYvu/5LZFaHAkG9ujNA+dBZ54ppwiM+b8gS0Myych
 9O/3bBbsFGBu7toEoLk2Q5SNO/G1kGgECeJtDxvJbCqFoti0FGMnZiV7aI8Ce6rBw10TH05or
 NmsYrXPLdvLs5GCEkGruVvfqkHHN2isxrs6FuQVs/lhuTzOBS1qzkIBOZlPc6CQUi8I9hE1GB
 QxrX6zIjH0zeuQAOTy4pVy7Iie1Z/9lj7Hzq39sHX5YJY2BVGvXusaLiGuxWtT/HzOmKv5SpN
 toXZbpduLngNFS+Zgy9Ob/D1uukZ621wviYKPM/E2aJT73DQM5vs02PP19etSFDTILpn5aiOo
 JJGu3Ta6mVyYGkyG6Tym57rgH7cNOsWSVu6rQiLfh/xAaffvXSq4ODwityuQKXl3Q7yWyAeAf
 SB6AoDOe9wyqFOZtuOCnQvPNqbCIXi/LUmBEvoMHECd371qpOf3+XJNUuLW1g0ImJWQ2CoKc2
 ivmIkSw/dktIVUj94zaGyn/p1mODsuy6yvryDwPkKk/dWHV5vTyc7+2rY+rqElryWYWRl9K7d
 fY3OIjIJHJtiBvoBzy3eEJErHeOPWN7xIo6rqLq0IvmZFCN/7ZCPDpNh3DdZSIs+sQhNsLKvH
 9w/BxP0Kz7gi9tV8cFincTQeLxVk4tb9nZJQuoPXIlYYj0Sah/DRmffeR5YqeTJ9QlDA+t6ia
 LSIyviVoOzozx4+UF3eKxfb/2lktiGIRMMFlvIdQHZ9V1Rui3/AC1l3YwWMb6r/2DYH8bX4Xj
 IclgEesZH1W6rRFcZ7uID6U1BqRSPrfplw4b/6zytTV6nczXuZmhIpA2iqLEaqVZNU2tE8N1q
 gfFcrnM7+vogqC7ebl4YjnO+ymna8Z09MKA1DNGixjnAWLRz1yJzcGvFS0nZTADk9HBA4eAhT
 qBZ1hETP7zQDTqcip/oXEmRUt4OPPvTPMvgq3/Tmpyia0yvKxfiH75NwzI4ZcyE+tz/7sPZbs
 aEbPwPte6N9IQrHIsIMNCesGki+lkMn5lx5/+tuAz3TVPnJbpEqV//QhexhCf7tQuNDIERlMS
 lj7HFm1YG2/TCevzRhUH9LVrzLDiWIMs+tZH4BibC6uFJY7mQs9jDzR/7oW2SzOiKBE/RhzOf
 46XQhFzH49wcih0sF6NvkwtIBTQc6hSVMYtqm/3XIDoTs0V9tPXZo2LQG/Ci6u/TDR0q42oLM
 6ai+cTpkIIQDD0EhWKeO/3AFFe+hVGpz3WhGPfmUw6Sbs9d7Ip7RW2HLgaR+4912fN6bVBA6I
 mK47Y8AZGjZjIDo3PCWAcGD0uwmIvwxnx5IbUOML8+JFYmWGGIH3vYwNQ5bkOVoCfmP1W3YiI
 nSySVI52VK8/iXwRv3ZjhcOw2+aBxOwgY3IR4KXlY1pb1ycysfCjpBrH7MO3yaqSUGA1NmE08
 oTHbBj2q9EjsiGphieCSRhXCJm6OfjsgoqwRcgmVqwLbuAATqGVBtBJxUUnWd/7HLQsT4HWi3
 6+6Wxkhk3K5AXzQuRE4IZjybVvU741XP69o4gdvcMYwQdQ4jpQkG/OepMHhxo3lJrb71xYU8V
 99aPByEoSXhm52lipBjQaYHqE99iAUFLzwkXqps8Kl0mnQVtXjqxVqOvwSKkXv3uViUN9JSE4
 De4xqG+AGtQCneUJzsLpb/Rm50YLc+CpAr+oy8yvn63S4cve59HA4Vv+txfdAGrNU+pdjpDna
 o7hDLNMBCKQV4TNAFR8ESgdxSurZ/tZyqgKI46pqYMmDqASfNLBEGBB31x8xkFNuJe1hlTiUZ
 s6TuHj3SBCcZJaOILE8iEC+1NcFe6XgI/OX2NJ/q6MZV6KTADgHS/PYIT6oUNFLKEIQb/Hurm
 C08EbhMma1EzTCWXOZvSrQ8Y7fXv20xB3HcjLjcF8Uh0RrC9EZVn2QvFB1csAXrLgH/dLc86z
 qNwfi0w2k7zwc8vJNvZ2R3cGPFZeA0W5/cikgSqxKuNU85Uw2Lx9Kp59Iie4W0P0sePwzUaXc
 Jx9zC12uXJ70QCEkpjBgMQCeE0jbJFYdKFnA/xT5fdG+KIPGrZ3dhs2WG2RylZoaKXrSYWBf+
 ckjTiYHxTuKcJkXB6BqhsQxQoXoiQRaeyA10KmvGeqI1A1wWz9NX3dYrosroLKmWvY1NPH7ie
 IJBTWkjfnuAiOnfxkLa/x8zJgDLbi/JBn8lflIZpk4A+JfW1rlxWLlxrPbA5f/DlKvsij2CZz
 XkYgtIfYxMHpezXqtvce4hQS5WohkXrlvXfoVlBUgcUL4b28axPhTiQsgKvSBnWE15fKk6+PB
 Jqv47ZQIGF1HETroGuG/iW8VV/bylPlC8rDHZlnXNSrCRhYsXXDjUXIINUyfmqfaQBl59asci
 u6I23RhJYChqLcOb1mTmfGVJAgb8vrlxxGcwfp4rTOd4zgdDb2H4oK5S6j7UEgTWwZ+aRdFpp
 SdqOFkQep7jb6aRHg0N99q1jtXxq8vKXGdzQuIt+uGGqP1atGTWb75kIhQGq41VnAoNW2WghG
 dTe8qqiAaWEGoSlrdwTZATgD0caPpzXS9GxyODejw2q9vCuzzZ0F6wnDPJCdJBhu20O7cehkh
 hut2J5lUuUCtOw8PA79ci34HjFjAUuwYJPc6Sf7aTph1+7DYI2AT/Bh1B1dgjTwoUD191IRiN
 iPZuj//AszP3cZgYF0UxRsMZpCiCamYvDEznAXnZsvG/nVKQJvgaWLULde33Qdbup9zM6L1PX
 OUtJRd29M/89ZfHMduMGoLgVnK6dG8uA1HFZw56C9pZWlbzY8QGcAMlXpaDQyGO+/3V3Rvke+
 SSzjQi2xhwOKytLG4n+REToODPkTICx0+c/vRMycI+2/eNa1BjtAwro3eqvCkrfURFm1GWE+H
 LeQWbuDd93HyS+SJVFbkK04oeprQB92hD2okJpUEHob7g+W2UyYzzswkoLNayKSkINoiCYv5A
 DLyLOanBiND9yn5R3lNkym8b5ctV3XgIywcZ1E8wCmpC2S0J3lpIaa+TGN0irOsWhmjeBRQWU
 YRwYMhmuFqcHOVFDLmXEDUh8d1jcM6kYc1n8iHmt/NX4Gjt17NcBhtNrTBIY0zO/VYt9qTGbd
 N4z/lBX/s7+Xj3fRW4LgAzuvXm4Z9J0lrBt/E3eNJvmSjPfLcMEWCSFk2IgbBQ1IZDDzH9Qnu
 wiV81kWueu0X6t5vLj8ZZY26bbKAidLD/m33uuvMA7I3aS08r5dObRERju7Ennu5WEE87Aov+
 CriI9OBt7r0ZLO1r9dCle3CWFtCvjf3TChJHOf1sBm/O836Q1XaARLNmOKYgoLRFuuSnSunCu
 bZtplEfCf4jy4yrh53c4+ofWXyXT5HNvcfUbBojbB1NI25Xj3N3ARwMvAEXwziEZVFpwGxNb4
 tsTAeuZj1wyV7aYuid0pLMhTSZwq+o2GcsbZD2+D64Bnsd23QdmADUZZBma5sf+ESIRujJH8W
 HAVr+naOzmgKywQ03g6jnurJE+BIneEafOh3rrX1tLZgLtd1jOLrYxiJwypdBMADgZQsyE0Dx
 XhiE5UStoTsED9NETt0qoAJ77ptZCmZjR3rNIXxkmME7UaQyKSSmL2LhCzB5pmaf+aT9jfteX
 Q52aVt3DPlt9xEK64xWctRpM/R0mjRbhNnzGnkpy5mzG+xu5hBHkCngChxfc0zKe2D/HzZsAl
 3EYTtp36b8vlm34mxS+CH4gm2U/tfx6J8BKpOh3JlmWEpB5Ky5iKdSvexCUvpvEbmJmMaV4KV
 EU8KEdjrEzCafvKXrOgSuPgi2PJxr5fBfi0CJQnHd3SFYMFjKda9y6dT//QBCkp3qSF/fchu+
 3ddymHEaQBA6l0cNEEDmlja8r/o/QJ44L/EsKme0S2/nUyipZfIKbU8x8RFEjvSQNXG6Hueox
 7XdS2YUa6pVD0+0Bo9dsOb+922/EGK8y81DgcweXMe3Rm3UJePKdQ++PQwLFAK487DSs5x9eT
 FIWbPNu9AxZsk8WF+8R04eMJlFfJyIqg4SQ0flueywCP1IRfLFfkJr7CrxiX6sIagJyzO7KdP
 ImoEqwROgiBV8PR5WN/zGkzZdJ5MHZaBUTLqYQF8lDFtZnl49zOlBSJ21TMdj7S4LkFvKEEGq
 xHuhWInbSUfSh31oEchCRceTBnwPGFb9JgWGCheA2cjmWphyLLHlccj70Fa+A==
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [1.89 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[gmx.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[311];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FREEMAIL_FROM(0.00)[gmx.de];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gmx.de:mid,gmx.de:from_mime,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3C216EDB21

Hi,

On 6/18/26 15:39, Arunpravin Paneer Selvam wrote:
> The fpfn/lpfn fields in struct ttm_place were named after page frame
> numbers, but they are really just placement parameters passed to the
> backend resource manager. Rename them to the generic param1/param2
> and document that their interpretation is backend-defined. The VRAM
> range manager continues to treat them as the first and last valid
> page frame number, so behaviour is unchanged.

"param1/param2" are *too* generic in my opinion. Can we use something=20
like range_lo/range_hi, or, alternatively, the more generic=20
constraint_lo/constraint_hi?

I basically want the fields to continue carrying the information "hey=20
this field is used to restrict where things can be allocated". At least=20
to me, when reading some code, "paramN" means absolutely nothing, and if=
=20
the code says nothing about what it intends to do, readability is=20
impacted by a bunch.

Thanks,
Natalie

>=20
> This decouples the API from PFN/range-specific semantics so that
> these fields can be used more flexibly in the future (e.g.,
> mask-based or segment-aware placement constraints). No functional
> change.
>=20
> Suggested-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com=
>
> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c       | 16 +++---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h       |  4 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c   |  8 +--
>   drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 46 +++++++--------
>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       | 24 ++++----
>   drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c       |  4 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c       | 16 +++---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  6 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  | 32 +++++------
>   drivers/gpu/drm/amd/amdkfd/kfd_svm.c          |  2 +-
>   .../gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c  |  2 +-
>   drivers/gpu/drm/drm_gem_vram_helper.c         |  4 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 18 +++---
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 56 +++++++++----------
>   drivers/gpu/drm/i915/intel_region_ttm.c       | 14 ++---
>   drivers/gpu/drm/loongson/lsdc_ttm.c           |  4 +-
>   drivers/gpu/drm/nouveau/nouveau_bo.c          | 22 ++++----
>   drivers/gpu/drm/nouveau/nouveau_mem.c         |  8 +--
>   drivers/gpu/drm/qxl/qxl_object.c              |  4 +-
>   drivers/gpu/drm/qxl/qxl_ttm.c                 |  4 +-
>   drivers/gpu/drm/radeon/radeon_object.c        | 28 +++++-----
>   drivers/gpu/drm/radeon/radeon_ttm.c           | 18 +++---
>   drivers/gpu/drm/radeon/radeon_uvd.c           |  8 +--
>   drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 16 +++---
>   drivers/gpu/drm/ttm/tests/ttm_mock_manager.c  |  8 +--
>   drivers/gpu/drm/ttm/ttm_bo_util.c             |  4 +-
>   drivers/gpu/drm/ttm/ttm_range_manager.c       | 18 +++---
>   drivers/gpu/drm/vmwgfx/vmwgfx_bo.c            | 30 +++++-----
>   drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c    |  8 +--
>   drivers/gpu/drm/xe/xe_bo.c                    | 24 ++++----
>   drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          | 40 ++++++-------
>   include/drm/ttm/ttm_placement.h               | 15 +++--
>   32 files changed, 259 insertions(+), 252 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_gmc.c
> index 276f9f49d6d1..20ec6d81bcb0 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c
> @@ -1452,11 +1452,11 @@ int amdgpu_gmc_get_nps_memranges(struct amdgpu_d=
evice *adev,
>   			}
>   		}
>  =20
> -		mem_ranges[i].range.fpfn =3D
> +		mem_ranges[i].range.param1 =3D
>   			(ranges[i].base_address -
>   			 adev->vm_manager.vram_base_offset) >>
>   			AMDGPU_GPU_PAGE_SHIFT;
> -		mem_ranges[i].range.lpfn =3D
> +		mem_ranges[i].range.param2 =3D
>   			(ranges[i].limit_address -
>   			 adev->vm_manager.vram_base_offset) >>
>   			AMDGPU_GPU_PAGE_SHIFT;
> @@ -1708,8 +1708,8 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu_d=
evice *adev,
>   	if (!r) {
>   		l =3D 0;
>   		for (i =3D 1; i < adev->gmc.num_mem_partitions; ++i) {
> -			if (mem_ranges[i].range.lpfn >
> -			    mem_ranges[i - 1].range.lpfn)
> +			if (mem_ranges[i].range.param2 >
> +			    mem_ranges[i - 1].range.param2)
>   				l =3D i;
>   		}
>  =20
> @@ -1724,10 +1724,10 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu=
_device *adev,
>   		size /=3D adev->gmc.num_mem_partitions;
>  =20
>   		for (i =3D 0; i < adev->gmc.num_mem_partitions; ++i) {
> -			mem_ranges[i].range.fpfn =3D start_addr;
> +			mem_ranges[i].range.param1 =3D start_addr;
>   			mem_ranges[i].size =3D
>   				((u64)size << AMDGPU_GPU_PAGE_SHIFT);
> -			mem_ranges[i].range.lpfn =3D start_addr + size - 1;
> +			mem_ranges[i].range.param2 =3D start_addr + size - 1;
>   			start_addr +=3D size;
>   		}
>  =20
> @@ -1735,11 +1735,11 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu=
_device *adev,
>   	}
>  =20
>   	/* Adjust the last one */
> -	mem_ranges[l].range.lpfn =3D
> +	mem_ranges[l].range.param2 =3D
>   		(adev->gmc.real_vram_size >> AMDGPU_GPU_PAGE_SHIFT) - 1;
>   	mem_ranges[l].size =3D
>   		adev->gmc.real_vram_size -
> -		((u64)mem_ranges[l].range.fpfn << AMDGPU_GPU_PAGE_SHIFT);
> +		((u64)mem_ranges[l].range.param1 << AMDGPU_GPU_PAGE_SHIFT);
>   }
>  =20
>   int amdgpu_gmc_init_mem_ranges(struct amdgpu_device *adev)
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_gmc.h
> index 676e3aaa1f27..12fc85d8c306 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h
> @@ -195,8 +195,8 @@ struct amdgpu_gmc_funcs {
>   struct amdgpu_mem_partition_info {
>   	union {
>   		struct {
> -			uint32_t fpfn;
> -			uint32_t lpfn;
> +			uint32_t param1;
> +			uint32_t param2;
>   		} range;
>   		struct {
>   			int node;
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c b/drivers/gpu/d=
rm/amd/amdgpu/amdgpu_gtt_mgr.c
> index a5d26b943f6d..ebe3605f2855 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
> @@ -133,11 +133,11 @@ static int amdgpu_gtt_mgr_new(struct ttm_resource_=
manager *man,
>   		goto err_free;
>   	}
>  =20
> -	if (place->lpfn) {
> +	if (place->param2) {
>   		spin_lock(&mgr->lock);
>   		r =3D drm_mm_insert_node_in_range(&mgr->mm, &node->mm_nodes[0],
>   						num_pages, tbo->page_alignment,
> -						0, place->fpfn, place->lpfn,
> +						0, place->param1, place->param2,
>   						DRM_MM_INSERT_BEST);
>   		spin_unlock(&mgr->lock);
>   		if (unlikely(r))
> @@ -272,7 +272,7 @@ static bool amdgpu_gtt_mgr_intersects(struct ttm_res=
ource_manager *man,
>   				      const struct ttm_place *place,
>   				      size_t size)
>   {
> -	return !place->lpfn || amdgpu_gtt_mgr_has_gart_addr(res);
> +	return !place->param2 || amdgpu_gtt_mgr_has_gart_addr(res);
>   }
>  =20
>   /**
> @@ -290,7 +290,7 @@ static bool amdgpu_gtt_mgr_compatible(struct ttm_res=
ource_manager *man,
>   				      const struct ttm_place *place,
>   				      size_t size)
>   {
> -	return !place->lpfn || amdgpu_gtt_mgr_has_gart_addr(res);
> +	return !place->param2 || amdgpu_gtt_mgr_has_gart_addr(res);
>   }
>  =20
>   /**
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/dr=
m/amd/amdgpu/amdgpu_object.c
> index f98bfba59a2c..86801f873966 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
> @@ -120,21 +120,21 @@ void amdgpu_bo_placement_from_domain(struct amdgpu=
_bo *abo, u32 domain)
>   		int8_t mem_id =3D KFD_XCP_MEM_ID(adev, abo->xcp_id);
>  =20
>   		if (adev->gmc.mem_partitions && mem_id >=3D 0) {
> -			places[c].fpfn =3D adev->gmc.mem_partitions[mem_id].range.fpfn;
> +			places[c].param1 =3D adev->gmc.mem_partitions[mem_id].range.param1;
>   			/*
> -			 * memory partition range lpfn is inclusive start + size - 1
> -			 * TTM place lpfn is exclusive start + size
> +			 * memory partition range param2 is inclusive start + size - 1
> +			 * TTM place param2 is exclusive start + size
>   			 */
> -			places[c].lpfn =3D adev->gmc.mem_partitions[mem_id].range.lpfn + 1;
> +			places[c].param2 =3D adev->gmc.mem_partitions[mem_id].range.param2 +=
 1;
>   		} else {
> -			places[c].fpfn =3D 0;
> -			places[c].lpfn =3D 0;
> +			places[c].param1 =3D 0;
> +			places[c].param2 =3D 0;
>   		}
>   		places[c].mem_type =3D TTM_PL_VRAM;
>   		places[c].flags =3D 0;
>  =20
>   		if (flags & AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED)
> -			places[c].lpfn =3D min_not_zero(places[c].lpfn, visible_pfn);
> +			places[c].param2 =3D min_not_zero(places[c].param2, visible_pfn);
>   		else
>   			places[c].flags |=3D TTM_PL_FLAG_TOPDOWN;
>  =20
> @@ -146,16 +146,16 @@ void amdgpu_bo_placement_from_domain(struct amdgpu=
_bo *abo, u32 domain)
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_DOORBELL) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D AMDGPU_PL_DOORBELL;
>   		places[c].flags =3D 0;
>   		c++;
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_GTT) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D
>   			abo->flags & AMDGPU_GEM_CREATE_PREEMPTIBLE ?
>   			AMDGPU_PL_PREEMPT : TTM_PL_TT;
> @@ -171,40 +171,40 @@ void amdgpu_bo_placement_from_domain(struct amdgpu=
_bo *abo, u32 domain)
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_CPU) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D TTM_PL_SYSTEM;
>   		places[c].flags =3D 0;
>   		c++;
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_GDS) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D AMDGPU_PL_GDS;
>   		places[c].flags =3D 0;
>   		c++;
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_GWS) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D AMDGPU_PL_GWS;
>   		places[c].flags =3D 0;
>   		c++;
>   	}
>  =20
>   	if (domain & AMDGPU_GEM_DOMAIN_OA) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D AMDGPU_PL_OA;
>   		places[c].flags =3D 0;
>   		c++;
>   	}
>  =20
>   	if (!c) {
> -		places[c].fpfn =3D 0;
> -		places[c].lpfn =3D 0;
> +		places[c].param1 =3D 0;
> +		places[c].param2 =3D 0;
>   		places[c].mem_type =3D TTM_PL_SYSTEM;
>   		places[c].flags =3D 0;
>   		c++;
> @@ -465,8 +465,8 @@ int amdgpu_bo_create_kernel_at(struct amdgpu_device =
*adev,
>   	ttm_resource_free(&(*bo_ptr)->tbo, &(*bo_ptr)->tbo.resource);
>  =20
>   	for (i =3D 0; i < (*bo_ptr)->placement.num_placement; ++i) {
> -		(*bo_ptr)->placements[i].fpfn =3D offset >> PAGE_SHIFT;
> -		(*bo_ptr)->placements[i].lpfn =3D (offset + size) >> PAGE_SHIFT;
> +		(*bo_ptr)->placements[i].param1 =3D offset >> PAGE_SHIFT;
> +		(*bo_ptr)->placements[i].param2 =3D (offset + size) >> PAGE_SHIFT;
>   	}
>   	r =3D ttm_bo_mem_space(&(*bo_ptr)->tbo, &(*bo_ptr)->placement,
>   			     &(*bo_ptr)->tbo.resource, &ctx);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_ttm.c
> index 2740de94e93c..000720287ca6 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> @@ -96,8 +96,8 @@ static void amdgpu_evict_flags(struct ttm_buffer_objec=
t *bo,
>   	struct amdgpu_device *adev =3D amdgpu_ttm_adev(bo->bdev);
>   	struct amdgpu_bo *abo;
>   	static const struct ttm_place placements =3D {
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D TTM_PL_SYSTEM,
>   		.flags =3D 0
>   	};
> @@ -147,8 +147,8 @@ static void amdgpu_evict_flags(struct ttm_buffer_obj=
ect *bo,
>   			amdgpu_bo_placement_from_domain(abo, AMDGPU_GEM_DOMAIN_VRAM |
>   							AMDGPU_GEM_DOMAIN_GTT |
>   							AMDGPU_GEM_DOMAIN_CPU);
> -			abo->placements[0].fpfn =3D adev->gmc.visible_vram_size >> PAGE_SHIF=
T;
> -			abo->placements[0].lpfn =3D 0;
> +			abo->placements[0].param1 =3D adev->gmc.visible_vram_size >> PAGE_SH=
IFT;
> +			abo->placements[0].param2 =3D 0;
>   			abo->placements[0].flags |=3D TTM_PL_FLAG_DESIRED;
>   		} else {
>   			/* Move to GTT memory */
> @@ -580,8 +580,8 @@ static int amdgpu_bo_move(struct ttm_buffer_object *=
bo, bool evict,
>   	      new_mem->mem_type =3D=3D TTM_PL_VRAM) ||
>   	     (old_mem->mem_type =3D=3D TTM_PL_VRAM &&
>   	      new_mem->mem_type =3D=3D TTM_PL_SYSTEM))) {
> -		hop->fpfn =3D 0;
> -		hop->lpfn =3D 0;
> +		hop->param1 =3D 0;
> +		hop->param2 =3D 0;
>   		hop->mem_type =3D TTM_PL_TT;
>   		hop->flags =3D TTM_PL_FLAG_TEMPORARY;
>   		return -EMULTIHOP;
> @@ -988,8 +988,8 @@ int amdgpu_ttm_alloc_gart(struct ttm_buffer_object *=
bo)
>   	/* allocate GART space */
>   	placement.num_placement =3D 1;
>   	placement.placement =3D &placements;
> -	placements.fpfn =3D 0;
> -	placements.lpfn =3D adev->gmc.gart_size >> PAGE_SHIFT;
> +	placements.param1 =3D 0;
> +	placements.param2 =3D adev->gmc.gart_size >> PAGE_SHIFT;
>   	placements.mem_type =3D TTM_PL_TT;
>   	placements.flags =3D bo->resource->placement;
>  =20
> @@ -1956,8 +1956,8 @@ static int amdgpu_ttm_alloc_mmio_remap_bo(struct a=
mdgpu_device *adev)
>   	 */
>   	placement.num_placement =3D 1;
>   	placement.placement =3D &placements;
> -	placements.fpfn =3D 0;
> -	placements.lpfn =3D 0;
> +	placements.param1 =3D 0;
> +	placements.param2 =3D 0;
>   	placements.mem_type =3D AMDGPU_PL_MMIO_REMAP;
>   	placements.flags =3D 0;
>   	/* Force the BO into the fixed MMIO_REMAP placement */
> @@ -2097,7 +2097,7 @@ int amdgpu_ttm_init(struct amdgpu_device *adev)
>   		}
>   	}
>  =20
> -	/* Change the size here instead of the init above so only lpfn is affe=
cted */
> +	/* Change the size here instead of the init above so only param2 is af=
fected */
>   	amdgpu_ttm_disable_buffer_funcs(adev);
>   #ifdef CONFIG_64BIT
>   #ifdef CONFIG_X86
> @@ -2361,7 +2361,7 @@ void amdgpu_ttm_enable_buffer_funcs(struct amdgpu_=
device *adev)
>   		}
>   	}
>  =20
> -	/* this just adjusts TTM size idea, which sets lpfn to the correct val=
ue */
> +	/* this just adjusts TTM size idea, which sets param2 to the correct v=
alue */
>   	man->size =3D adev->gmc.real_vram_size;
>   	adev->mman.buffer_funcs_enabled =3D true;
>  =20
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_uvd.c
> index 3a3bc0d370fa..5cb4ca4f60aa 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -550,8 +550,8 @@ static void amdgpu_uvd_force_into_uvd_segment(struct=
 amdgpu_bo *abo)
>   	int i;
>  =20
>   	for (i =3D 0; i < abo->placement.num_placement; ++i) {
> -		abo->placements[i].fpfn =3D 0 >> PAGE_SHIFT;
> -		abo->placements[i].lpfn =3D (256 * 1024 * 1024) >> PAGE_SHIFT;
> +		abo->placements[i].param1 =3D 0 >> PAGE_SHIFT;
> +		abo->placements[i].param2 =3D (256 * 1024 * 1024) >> PAGE_SHIFT;
>   		if (abo->placements[i].mem_type =3D=3D TTM_PL_VRAM)
>   			abo->placements[i].flags |=3D TTM_PL_FLAG_CONTIGUOUS;
>   	}
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_vce.c
> index efdebd9c0a1f..1c0f2a2bea9e 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
> @@ -628,7 +628,7 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs_p=
arser *p,
>   	int64_t offset =3D ((uint64_t)size) * ((int64_t)index);
>   	struct ttm_operation_ctx ctx =3D { false, false };
>   	struct amdgpu_bo_va_mapping *mapping;
> -	unsigned int i, fpfn, lpfn;
> +	unsigned int i, start, end;
>   	struct amdgpu_bo *bo;
>   	uint64_t addr;
>   	int r;
> @@ -637,11 +637,11 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs=
_parser *p,
>   	       ((uint64_t)amdgpu_ib_get_value(ib, hi)) << 32;
>   	if (index >=3D 0) {
>   		addr +=3D offset;
> -		fpfn =3D PAGE_ALIGN(offset) >> PAGE_SHIFT;
> -		lpfn =3D 0x100000000ULL >> PAGE_SHIFT;
> +		start =3D PAGE_ALIGN(offset) >> PAGE_SHIFT;
> +		end =3D 0x100000000ULL >> PAGE_SHIFT;
>   	} else {
> -		fpfn =3D 0;
> -		lpfn =3D (0x100000000ULL - PAGE_ALIGN(offset)) >> PAGE_SHIFT;
> +		start =3D 0;
> +		end =3D (0x100000000ULL - PAGE_ALIGN(offset)) >> PAGE_SHIFT;
>   	}
>  =20
>   	r =3D amdgpu_cs_find_mapping(p, addr, &bo, &mapping);
> @@ -652,9 +652,9 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs_p=
arser *p,
>   	}
>  =20
>   	for (i =3D 0; i < bo->placement.num_placement; ++i) {
> -		bo->placements[i].fpfn =3D max(bo->placements[i].fpfn, fpfn);
> -		bo->placements[i].lpfn =3D bo->placements[i].lpfn ?
> -			min(bo->placements[i].lpfn, lpfn) : lpfn;
> +		bo->placements[i].param1 =3D max(bo->placements[i].param1, start);
> +		bo->placements[i].param2 =3D bo->placements[i].param2 ?
> +			min(bo->placements[i].param2, end) : end;
>   	}
>   	return ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
>   }
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_vm.c
> index a99d01f9dc75..ed3aeb1a2573 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
> @@ -1784,7 +1784,7 @@ static int amdgpu_vm_verify_parameters(struct amdg=
pu_device *adev,
>   					  uint64_t offset,
>   					  uint64_t size)
>   {
> -	uint64_t tmp, lpfn;
> +	uint64_t tmp, end;
>  =20
>   	if (saddr & AMDGPU_GPU_PAGE_MASK
>   	    || offset & AMDGPU_GPU_PAGE_MASK
> @@ -1801,8 +1801,8 @@ static int amdgpu_vm_verify_parameters(struct amdg=
pu_device *adev,
>   		return -EINVAL;
>  =20
>   	/* Ensure last pfn not exceed max_pfn */
> -	lpfn =3D (saddr + size - 1) >> AMDGPU_GPU_PAGE_SHIFT;
> -	if (lpfn >=3D adev->vm_manager.max_pfn)
> +	end =3D (saddr + size - 1) >> AMDGPU_GPU_PAGE_SHIFT;
> +	if (end >=3D adev->vm_manager.max_pfn)
>   		return -EINVAL;
>  =20
>   	return 0;
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c b/drivers/gpu/=
drm/amd/amdgpu/amdgpu_vram_mgr.c
> index 2a241a5b12c4..0b09e6f55b56 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
> @@ -449,18 +449,18 @@ static int amdgpu_vram_mgr_new(struct ttm_resource=
_manager *man,
>   	struct amdgpu_bo *bo =3D ttm_to_amdgpu_bo(tbo);
>   	u64 vis_usage =3D 0, max_bytes, min_block_size;
>   	struct amdgpu_vram_mgr_resource *vres;
> -	u64 size, remaining_size, lpfn, fpfn;
> +	u64 size, remaining_size, end, start;
>   	unsigned int adjust_dcc_size =3D 0;
>   	struct gpu_buddy *mm =3D &mgr->mm;
>   	struct gpu_buddy_block *block;
>   	unsigned long pages_per_block;
>   	int r;
>  =20
> -	lpfn =3D (u64)place->lpfn << PAGE_SHIFT;
> -	if (!lpfn || lpfn > man->size)
> -		lpfn =3D man->size;
> +	end =3D (u64)place->param2 << PAGE_SHIFT;
> +	if (!end || end > man->size)
> +		end =3D man->size;
>  =20
> -	fpfn =3D (u64)place->fpfn << PAGE_SHIFT;
> +	start =3D (u64)place->param1 << PAGE_SHIFT;
>  =20
>   	max_bytes =3D adev->gmc.mc_vram_size;
>   	if (tbo->type !=3D ttm_bo_type_kernel)
> @@ -502,7 +502,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_m=
anager *man,
>   	if (bo->flags & AMDGPU_GEM_CREATE_VRAM_CLEARED)
>   		vres->flags |=3D GPU_BUDDY_CLEAR_ALLOCATION;
>  =20
> -	if (fpfn || lpfn !=3D mgr->mm.size)
> +	if (start || end !=3D mgr->mm.size)
>   		/* Allocate blocks in desired range */
>   		vres->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>  =20
> @@ -537,8 +537,8 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_m=
anager *man,
>  =20
>   		BUG_ON(min_block_size < mm->chunk_size);
>  =20
> -		r =3D gpu_buddy_alloc_blocks(mm, fpfn,
> -					   lpfn,
> +		r =3D gpu_buddy_alloc_blocks(mm, start,
> +					   end,
>   					   size,
>   					   min_block_size,
>   					   &vres->blocks,
> @@ -820,13 +820,13 @@ static bool amdgpu_vram_mgr_intersects(struct ttm_=
resource_manager *man,
>  =20
>   	/* Check each drm buddy block individually */
>   	list_for_each_entry(block, &mgr->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			amdgpu_vram_mgr_block_start(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(amdgpu_vram_mgr_block_size(block) >> PAGE_SHIFT);
>  =20
> -		if (place->fpfn < lpfn &&
> -		    (!place->lpfn || place->lpfn > fpfn))
> +		if (place->param1 < end &&
> +		    (!place->param2 || place->param2 > start))
>   			return true;
>   	}
>  =20
> @@ -853,13 +853,13 @@ static bool amdgpu_vram_mgr_compatible(struct ttm_=
resource_manager *man,
>  =20
>   	/* Check each drm buddy block individually */
>   	list_for_each_entry(block, &mgr->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			amdgpu_vram_mgr_block_start(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(amdgpu_vram_mgr_block_size(block) >> PAGE_SHIFT);
>  =20
> -		if (fpfn < place->fpfn ||
> -		    (place->lpfn && lpfn > place->lpfn))
> +		if (start < place->param1 ||
> +		    (place->param2 && end > place->param2))
>   			return false;
>   	}
>  =20
> diff --git a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c b/drivers/gpu/drm/amd/=
amdkfd/kfd_svm.c
> index 35ec67d9739b..98cb68fb1e9e 100644
> --- a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
> +++ b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
> @@ -1477,7 +1477,7 @@ svm_range_map_to_gpu(struct kfd_process_device *pd=
d, struct svm_range *prange,
>  =20
>  =20
>   		/* For dGPU mode, we use same vm_manager to allocate VRAM for
> -		 * different memory partition based on fpfn/lpfn, we should use
> +		 * different memory partition based on param1/param2, we should use
>   		 * same vm_manager.vram_base_offset regardless memory partition.
>   		 */
>   		gpu_start =3D last_start * AMDGPU_GPU_PAGES_IN_CPU_PAGE;
> diff --git a/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c b/drivers/=
gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
> index c22e53e84207..c1d152faf30d 100644
> --- a/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
> +++ b/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
> @@ -145,7 +145,7 @@ static int amdgpu_ras_get_ras_safe_fb_addr_ranges(st=
ruct ras_core_context *ras_c
>  =20
>   	mem_ranges =3D adev->gmc.mem_partitions;
>   	for (i =3D 0; i < adev->gmc.num_mem_partitions; i++) {
> -		ranges->range[i].start =3D mem_ranges[i].range.fpfn << AMDGPU_GPU_PAG=
E_SHIFT;
> +		ranges->range[i].start =3D mem_ranges[i].range.param1 << AMDGPU_GPU_P=
AGE_SHIFT;
>   		ranges->range[i].size =3D mem_ranges[i].size;
>   		ranges->range[i].idx =3D i;
>   	}
> diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm=
_gem_vram_helper.c
> index bca802ccddee..89ae283a0ece 100644
> --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> @@ -154,8 +154,8 @@ static void drm_gem_vram_placement(struct drm_gem_vr=
am_object *gbo,
>   	gbo->placement.num_placement =3D c;
>  =20
>   	for (i =3D 0; i < c; ++i) {
> -		gbo->placements[i].fpfn =3D 0;
> -		gbo->placements[i].lpfn =3D 0;
> +		gbo->placements[i].param1 =3D 0;
> +		gbo->placements[i].param2 =3D 0;
>   	}
>   }
>  =20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i=
915/gem/i915_gem_ttm.c
> index de70517b4ef2..b64402a788b5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -58,8 +58,8 @@ struct i915_ttm_tt {
>   };
>  =20
>   static const struct ttm_place sys_placement_flags =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D I915_PL_SYSTEM,
>   	.flags =3D 0,
>   };
> @@ -140,17 +140,17 @@ i915_ttm_place_from_region(const struct intel_memo=
ry_region *mr,
>   	if (flags & I915_BO_ALLOC_CONTIGUOUS)
>   		place->flags |=3D TTM_PL_FLAG_CONTIGUOUS;
>   	if (offset !=3D I915_BO_INVALID_OFFSET) {
> -		WARN_ON(overflows_type(offset >> PAGE_SHIFT, place->fpfn));
> -		place->fpfn =3D offset >> PAGE_SHIFT;
> -		WARN_ON(overflows_type(place->fpfn + (size >> PAGE_SHIFT), place->lpf=
n));
> -		place->lpfn =3D place->fpfn + (size >> PAGE_SHIFT);
> +		WARN_ON(overflows_type(offset >> PAGE_SHIFT, place->param1));
> +		place->param1 =3D offset >> PAGE_SHIFT;
> +		WARN_ON(overflows_type(place->param1 + (size >> PAGE_SHIFT), place->p=
aram2));
> +		place->param2 =3D place->param1 + (size >> PAGE_SHIFT);
>   	} else if (resource_size(&mr->io) && resource_size(&mr->io) < mr->tot=
al) {
>   		if (flags & I915_BO_ALLOC_GPU_ONLY) {
>   			place->flags |=3D TTM_PL_FLAG_TOPDOWN;
>   		} else {
> -			place->fpfn =3D 0;
> -			WARN_ON(overflows_type(resource_size(&mr->io) >> PAGE_SHIFT, place->=
lpfn));
> -			place->lpfn =3D resource_size(&mr->io) >> PAGE_SHIFT;
> +			place->param1 =3D 0;
> +			WARN_ON(overflows_type(resource_size(&mr->io) >> PAGE_SHIFT, place->=
param2));
> +			place->param2 =3D resource_size(&mr->io) >> PAGE_SHIFT;
>   		}
>   	}
>   }
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu=
/drm/i915/i915_ttm_buddy_manager.c
> index 10df50a54e88..90ad831ceba3 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -40,14 +40,14 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resou=
rce_manager *man,
>   	struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
>   	struct i915_ttm_buddy_resource *bman_res;
>   	struct gpu_buddy *mm =3D &bman->mm;
> -	unsigned long n_pages, lpfn;
> +	unsigned long n_pages, end;
>   	u64 min_page_size;
>   	u64 size;
>   	int err;
>  =20
> -	lpfn =3D place->lpfn;
> -	if (!lpfn)
> -		lpfn =3D man->size;
> +	end =3D place->param2;
> +	if (!end)
> +		end =3D man->size;
>  =20
>   	bman_res =3D kzalloc_obj(*bman_res);
>   	if (!bman_res)
> @@ -63,7 +63,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resourc=
e_manager *man,
>   	if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
>   		bman_res->flags |=3D GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>  =20
> -	if (place->fpfn || lpfn !=3D man->size)
> +	if (place->param1 || end !=3D man->size)
>   		bman_res->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>  =20
>   	GEM_BUG_ON(!bman_res->base.size);
> @@ -76,7 +76,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resourc=
e_manager *man,
>   	GEM_BUG_ON(min_page_size < mm->chunk_size);
>   	GEM_BUG_ON(!IS_ALIGNED(size, min_page_size));
>  =20
> -	if (size > lpfn << PAGE_SHIFT) {
> +	if (size > end << PAGE_SHIFT) {
>   		err =3D -E2BIG;
>   		goto err_free_res;
>   	}
> @@ -84,14 +84,14 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resou=
rce_manager *man,
>   	n_pages =3D size >> ilog2(mm->chunk_size);
>  =20
>   	mutex_lock(&bman->lock);
> -	if (lpfn <=3D bman->visible_size && n_pages > bman->visible_avail) {
> +	if (end <=3D bman->visible_size && n_pages > bman->visible_avail) {
>   		mutex_unlock(&bman->lock);
>   		err =3D -ENOSPC;
>   		goto err_free_res;
>   	}
>  =20
> -	err =3D gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
> -				     (u64)lpfn << PAGE_SHIFT,
> +	err =3D gpu_buddy_alloc_blocks(mm, (u64)place->param1 << PAGE_SHIFT,
> +				     (u64)end << PAGE_SHIFT,
>   				     (u64)n_pages << PAGE_SHIFT,
>   				     min_page_size,
>   				     &bman_res->blocks,
> @@ -99,7 +99,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resourc=
e_manager *man,
>   	if (unlikely(err))
>   		goto err_free_blocks;
>  =20
> -	if (lpfn <=3D bman->visible_size) {
> +	if (end <=3D bman->visible_size) {
>   		bman_res->used_visible_size =3D PFN_UP(bman_res->base.size);
>   	} else {
>   		struct gpu_buddy_block *block;
> @@ -160,28 +160,28 @@ static bool i915_ttm_buddy_man_intersects(struct t=
tm_resource_manager *man,
>   	struct gpu_buddy *mm =3D &bman->mm;
>   	struct gpu_buddy_block *block;
>  =20
> -	if (!place->fpfn && !place->lpfn)
> +	if (!place->param1 && !place->param2)
>   		return true;
>  =20
> -	GEM_BUG_ON(!place->lpfn);
> +	GEM_BUG_ON(!place->param2);
>  =20
>   	/*
>   	 * If we just want something mappable then we can quickly check
>   	 * if the current victim resource is using any of the CPU
>   	 * visible portion.
>   	 */
> -	if (!place->fpfn &&
> -	    place->lpfn =3D=3D i915_ttm_buddy_man_visible_size(man))
> +	if (!place->param1 &&
> +	    place->param2 =3D=3D i915_ttm_buddy_man_visible_size(man))
>   		return bman_res->used_visible_size > 0;
>  =20
>   	/* Check each drm buddy block individually */
>   	list_for_each_entry(block, &bman_res->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>  =20
> -		if (place->fpfn < lpfn && place->lpfn > fpfn)
> +		if (place->param1 < end && place->param2 > start)
>   			return true;
>   	}
>  =20
> @@ -198,23 +198,23 @@ static bool i915_ttm_buddy_man_compatible(struct t=
tm_resource_manager *man,
>   	struct gpu_buddy *mm =3D &bman->mm;
>   	struct gpu_buddy_block *block;
>  =20
> -	if (!place->fpfn && !place->lpfn)
> +	if (!place->param1 && !place->param2)
>   		return true;
>  =20
> -	GEM_BUG_ON(!place->lpfn);
> +	GEM_BUG_ON(!place->param2);
>  =20
> -	if (!place->fpfn &&
> -	    place->lpfn =3D=3D i915_ttm_buddy_man_visible_size(man))
> +	if (!place->param1 &&
> +	    place->param2 =3D=3D i915_ttm_buddy_man_visible_size(man))
>   		return bman_res->used_visible_size =3D=3D PFN_UP(res->size);
>  =20
>   	/* Check each drm buddy block individually */
>   	list_for_each_entry(block, &bman_res->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>  =20
> -		if (fpfn < place->fpfn || lpfn > place->lpfn)
> +		if (start < place->param1 || end > place->param2)
>   			return false;
>   	}
>  =20
> @@ -373,7 +373,7 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_m=
anager *man,
>   {
>   	struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
>   	struct gpu_buddy *mm =3D &bman->mm;
> -	unsigned long fpfn =3D start >> PAGE_SHIFT;
> +	unsigned long start_pfn =3D start >> PAGE_SHIFT;
>   	unsigned long flags =3D 0;
>   	int ret;
>  =20
> @@ -386,9 +386,9 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_m=
anager *man,
>   				     &bman->reserved,
>   				     flags);
>  =20
> -	if (fpfn < bman->visible_size) {
> -		unsigned long lpfn =3D fpfn + (size >> PAGE_SHIFT);
> -		unsigned long visible =3D min(lpfn, bman->visible_size) - fpfn;
> +	if (start_pfn < bman->visible_size) {
> +		unsigned long end_pfn =3D start_pfn + (size >> PAGE_SHIFT);
> +		unsigned long visible =3D min(end_pfn, bman->visible_size) - start_pf=
n;
>  =20
>   		bman->visible_reserved +=3D visible;
>   		bman->visible_avail -=3D visible;
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i=
915/intel_region_ttm.c
> index 47a69aad5c3f..35f6569e918c 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> @@ -209,26 +209,26 @@ intel_region_ttm_resource_alloc(struct intel_memor=
y_region *mem,
>   	if (flags & I915_BO_ALLOC_CONTIGUOUS)
>   		place.flags |=3D TTM_PL_FLAG_CONTIGUOUS;
>   	if (offset !=3D I915_BO_INVALID_OFFSET) {
> -		if (WARN_ON(overflows_type(offset >> PAGE_SHIFT, place.fpfn))) {
> +		if (WARN_ON(overflows_type(offset >> PAGE_SHIFT, place.param1))) {
>   			ret =3D -E2BIG;
>   			goto out;
>   		}
> -		place.fpfn =3D offset >> PAGE_SHIFT;
> -		if (WARN_ON(overflows_type(place.fpfn + (size >> PAGE_SHIFT), place.l=
pfn))) {
> +		place.param1 =3D offset >> PAGE_SHIFT;
> +		if (WARN_ON(overflows_type(place.param1 + (size >> PAGE_SHIFT), place=
.param2))) {
>   			ret =3D -E2BIG;
>   			goto out;
>   		}
> -		place.lpfn =3D place.fpfn + (size >> PAGE_SHIFT);
> +		place.param2 =3D place.param1 + (size >> PAGE_SHIFT);
>   	} else if (resource_size(&mem->io) && resource_size(&mem->io) < mem->=
total) {
>   		if (flags & I915_BO_ALLOC_GPU_ONLY) {
>   			place.flags |=3D TTM_PL_FLAG_TOPDOWN;
>   		} else {
> -			place.fpfn =3D 0;
> -			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, pl=
ace.lpfn))) {
> +			place.param1 =3D 0;
> +			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, pl=
ace.param2))) {
>   				ret =3D -E2BIG;
>   				goto out;
>   			}
> -			place.lpfn =3D resource_size(&mem->io) >> PAGE_SHIFT;
> +			place.param2 =3D resource_size(&mem->io) >> PAGE_SHIFT;
>   		}
>   	}
>  =20
> diff --git a/drivers/gpu/drm/loongson/lsdc_ttm.c b/drivers/gpu/drm/loong=
son/lsdc_ttm.c
> index d7441d96a0dc..2f2aa53e7db6 100644
> --- a/drivers/gpu/drm/loongson/lsdc_ttm.c
> +++ b/drivers/gpu/drm/loongson/lsdc_ttm.c
> @@ -79,8 +79,8 @@ static void lsdc_bo_set_placement(struct lsdc_bo *lbo,=
 u32 domain)
>   	lbo->placement.num_placement =3D c;
>  =20
>   	for (i =3D 0; i < c; ++i) {
> -		lbo->placements[i].fpfn =3D 0;
> -		lbo->placements[i].lpfn =3D 0;
> +		lbo->placements[i].param1 =3D 0;
> +		lbo->placements[i].param2 =3D 0;
>   	}
>   }
>  =20
> diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouv=
eau/nouveau_bo.c
> index 0e8de6d4b36f..d50cf1d5402d 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_bo.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
> @@ -483,7 +483,7 @@ set_placement_range(struct nouveau_bo *nvbo, uint32_=
t domain)
>   {
>   	struct nouveau_drm *drm =3D nouveau_bdev(nvbo->bo.bdev);
>   	u64 vram_size =3D drm->client.device.info.ram_size;
> -	unsigned i, fpfn, lpfn;
> +	unsigned i, start, end;
>  =20
>   	if (drm->client.device.info.family =3D=3D NV_DEVICE_INFO_V0_CELSIUS &=
&
>   	    nvbo->mode && (domain & NOUVEAU_GEM_DOMAIN_VRAM) &&
> @@ -495,15 +495,15 @@ set_placement_range(struct nouveau_bo *nvbo, uint3=
2_t domain)
>   		 * at the same time.
>   		 */
>   		if (nvbo->zeta) {
> -			fpfn =3D (vram_size / 2) >> PAGE_SHIFT;
> -			lpfn =3D ~0;
> +			start =3D (vram_size / 2) >> PAGE_SHIFT;
> +			end =3D ~0;
>   		} else {
> -			fpfn =3D 0;
> -			lpfn =3D (vram_size / 2) >> PAGE_SHIFT;
> +			start =3D 0;
> +			end =3D (vram_size / 2) >> PAGE_SHIFT;
>   		}
>   		for (i =3D 0; i < nvbo->placement.num_placement; ++i) {
> -			nvbo->placements[i].fpfn =3D fpfn;
> -			nvbo->placements[i].lpfn =3D lpfn;
> +			nvbo->placements[i].param1 =3D start;
> +			nvbo->placements[i].param2 =3D end;
>   		}
>   	}
>   }
> @@ -1198,8 +1198,8 @@ nouveau_bo_move(struct ttm_buffer_object *bo, bool=
 evict,
>   		     new_reg->mem_type =3D=3D TTM_PL_VRAM) ||
>   		    (old_reg->mem_type =3D=3D TTM_PL_VRAM &&
>   		     new_reg->mem_type =3D=3D TTM_PL_SYSTEM)) {
> -			hop->fpfn =3D 0;
> -			hop->lpfn =3D 0;
> +			hop->param1 =3D 0;
> +			hop->param2 =3D 0;
>   			hop->mem_type =3D TTM_PL_TT;
>   			hop->flags =3D 0;
>   			return -EMULTIHOP;
> @@ -1398,8 +1398,8 @@ vm_fault_t nouveau_ttm_fault_reserve_notify(struct=
 ttm_buffer_object *bo)
>   			return 0;
>  =20
>   		for (i =3D 0; i < nvbo->placement.num_placement; ++i) {
> -			nvbo->placements[i].fpfn =3D 0;
> -			nvbo->placements[i].lpfn =3D mappable;
> +			nvbo->placements[i].param1 =3D 0;
> +			nvbo->placements[i].param2 =3D mappable;
>   		}
>  =20
>   		nouveau_bo_placement_set(nvbo, NOUVEAU_GEM_DOMAIN_VRAM, 0);
> diff --git a/drivers/gpu/drm/nouveau/nouveau_mem.c b/drivers/gpu/drm/nou=
veau/nouveau_mem.c
> index b26c521166f1..87d9afbbe99f 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_mem.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_mem.c
> @@ -195,8 +195,8 @@ nouveau_mem_intersects(struct ttm_resource *res,
>   	u32 num_pages =3D PFN_UP(size);
>  =20
>   	/* Don't evict BOs outside of the requested placement range */
> -	if (place->fpfn >=3D (res->start + num_pages) ||
> -	    (place->lpfn && place->lpfn <=3D res->start))
> +	if (place->param1 >=3D (res->start + num_pages) ||
> +	    (place->param2 && place->param2 <=3D res->start))
>   		return false;
>  =20
>   	return true;
> @@ -209,8 +209,8 @@ nouveau_mem_compatible(struct ttm_resource *res,
>   {
>   	u32 num_pages =3D PFN_UP(size);
>  =20
> -	if (res->start < place->fpfn ||
> -	    (place->lpfn && (res->start + num_pages) > place->lpfn))
> +	if (res->start < place->param1 ||
> +	    (place->param2 && (res->start + num_pages) > place->param2))
>   		return false;
>  =20
>   	return true;
> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_=
object.c
> index 313f6c30cac8..7873bd349080 100644
> --- a/drivers/gpu/drm/qxl/qxl_object.c
> +++ b/drivers/gpu/drm/qxl/qxl_object.c
> @@ -83,8 +83,8 @@ void qxl_ttm_placement_from_domain(struct qxl_bo *qbo,=
 u32 domain)
>   	}
>   	qbo->placement.num_placement =3D c;
>   	for (i =3D 0; i < c; ++i) {
> -		qbo->placements[i].fpfn =3D 0;
> -		qbo->placements[i].lpfn =3D 0;
> +		qbo->placements[i].param1 =3D 0;
> +		qbo->placements[i].param2 =3D 0;
>   	}
>   }
>  =20
> diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c b/drivers/gpu/drm/qxl/qxl_ttm=
.c
> index 5d495c4798a3..fa43e31ac3d1 100644
> --- a/drivers/gpu/drm/qxl/qxl_ttm.c
> +++ b/drivers/gpu/drm/qxl/qxl_ttm.c
> @@ -53,8 +53,8 @@ static void qxl_evict_flags(struct ttm_buffer_object *=
bo,
>   {
>   	struct qxl_bo *qbo;
>   	static const struct ttm_place placements =3D {
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D TTM_PL_SYSTEM,
>   		.flags =3D 0
>   	};
> diff --git a/drivers/gpu/drm/radeon/radeon_object.c b/drivers/gpu/drm/ra=
deon/radeon_object.c
> index a0fc0801abb0..60ec1c9a5de4 100644
> --- a/drivers/gpu/drm/radeon/radeon_object.c
> +++ b/drivers/gpu/drm/radeon/radeon_object.c
> @@ -84,30 +84,30 @@ void radeon_ttm_placement_from_domain(struct radeon_=
bo *rbo, u32 domain)
>   		 */
>   		if ((rbo->flags & RADEON_GEM_NO_CPU_ACCESS) &&
>   		    rbo->rdev->mc.visible_vram_size < rbo->rdev->mc.real_vram_size) =
{
> -			rbo->placements[c].fpfn =3D
> +			rbo->placements[c].param1 =3D
>   				rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
>   			rbo->placements[c].mem_type =3D TTM_PL_VRAM;
>   			rbo->placements[c++].flags =3D 0;
>   		}
>  =20
> -		rbo->placements[c].fpfn =3D 0;
> +		rbo->placements[c].param1 =3D 0;
>   		rbo->placements[c].mem_type =3D TTM_PL_VRAM;
>   		rbo->placements[c++].flags =3D 0;
>   	}
>  =20
>   	if (domain & RADEON_GEM_DOMAIN_GTT) {
> -		rbo->placements[c].fpfn =3D 0;
> +		rbo->placements[c].param1 =3D 0;
>   		rbo->placements[c].mem_type =3D TTM_PL_TT;
>   		rbo->placements[c++].flags =3D 0;
>   	}
>  =20
>   	if (domain & RADEON_GEM_DOMAIN_CPU) {
> -		rbo->placements[c].fpfn =3D 0;
> +		rbo->placements[c].param1 =3D 0;
>   		rbo->placements[c].mem_type =3D TTM_PL_SYSTEM;
>   		rbo->placements[c++].flags =3D 0;
>   	}
>   	if (!c) {
> -		rbo->placements[c].fpfn =3D 0;
> +		rbo->placements[c].param1 =3D 0;
>   		rbo->placements[c].mem_type =3D TTM_PL_SYSTEM;
>   		rbo->placements[c++].flags =3D 0;
>   	}
> @@ -117,11 +117,11 @@ void radeon_ttm_placement_from_domain(struct radeo=
n_bo *rbo, u32 domain)
>   	for (i =3D 0; i < c; ++i) {
>   		if ((rbo->flags & RADEON_GEM_CPU_ACCESS) &&
>   		    (rbo->placements[i].mem_type =3D=3D TTM_PL_VRAM) &&
> -		    !rbo->placements[i].fpfn)
> -			rbo->placements[i].lpfn =3D
> +		    !rbo->placements[i].param1)
> +			rbo->placements[i].param2 =3D
>   				rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
>   		else
> -			rbo->placements[i].lpfn =3D 0;
> +			rbo->placements[i].param2 =3D 0;
>   	}
>   }
>  =20
> @@ -307,10 +307,10 @@ int radeon_bo_pin_restricted(struct radeon_bo *bo,=
 u32 domain, u64 max_offset,
>   		if ((bo->placements[i].mem_type =3D=3D TTM_PL_VRAM) &&
>   		    !(bo->flags & RADEON_GEM_NO_CPU_ACCESS) &&
>   		    (!max_offset || max_offset > bo->rdev->mc.visible_vram_size))
> -			bo->placements[i].lpfn =3D
> +			bo->placements[i].param2 =3D
>   				bo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
>   		else
> -			bo->placements[i].lpfn =3D max_offset >> PAGE_SHIFT;
> +			bo->placements[i].param2 =3D max_offset >> PAGE_SHIFT;
>   	}
>  =20
>   	r =3D ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
> @@ -719,7 +719,7 @@ vm_fault_t radeon_bo_fault_reserve_notify(struct ttm=
_buffer_object *bo)
>   	struct ttm_operation_ctx ctx =3D { false, false };
>   	struct radeon_device *rdev;
>   	struct radeon_bo *rbo;
> -	unsigned long offset, size, lpfn;
> +	unsigned long offset, size, end;
>   	int i, r;
>  =20
>   	if (!radeon_ttm_bo_is_radeon_bo(bo))
> @@ -741,12 +741,12 @@ vm_fault_t radeon_bo_fault_reserve_notify(struct t=
tm_buffer_object *bo)
>  =20
>   	/* hurrah the memory is not visible ! */
>   	radeon_ttm_placement_from_domain(rbo, RADEON_GEM_DOMAIN_VRAM);
> -	lpfn =3D	rdev->mc.visible_vram_size >> PAGE_SHIFT;
> +	end =3D	rdev->mc.visible_vram_size >> PAGE_SHIFT;
>   	for (i =3D 0; i < rbo->placement.num_placement; i++) {
>   		/* Force into visible VRAM */
>   		if ((rbo->placements[i].mem_type =3D=3D TTM_PL_VRAM) &&
> -		    (!rbo->placements[i].lpfn || rbo->placements[i].lpfn > lpfn))
> -			rbo->placements[i].lpfn =3D lpfn;
> +		    (!rbo->placements[i].param2 || rbo->placements[i].param2 > end))
> +			rbo->placements[i].param2 =3D end;
>   	}
>   	r =3D ttm_bo_validate(bo, &rbo->placement, &ctx);
>   	if (unlikely(r =3D=3D -ENOMEM)) {
> diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeo=
n/radeon_ttm.c
> index e7ab8162ac69..7456ede8bffb 100644
> --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> @@ -83,8 +83,8 @@ static void radeon_evict_flags(struct ttm_buffer_objec=
t *bo,
>   				struct ttm_placement *placement)
>   {
>   	static const struct ttm_place placements =3D {
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D TTM_PL_SYSTEM,
>   		.flags =3D 0
>   	};
> @@ -103,7 +103,7 @@ static void radeon_evict_flags(struct ttm_buffer_obj=
ect *bo,
>   			radeon_ttm_placement_from_domain(rbo, RADEON_GEM_DOMAIN_CPU);
>   		else if (rbo->rdev->mc.visible_vram_size < rbo->rdev->mc.real_vram_s=
ize &&
>   			 bo->resource->start < (rbo->rdev->mc.visible_vram_size >> PAGE_SHI=
FT)) {
> -			unsigned fpfn =3D rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
> +			unsigned start =3D rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
>   			int i;
>  =20
>   			/* Try evicting to the CPU inaccessible part of VRAM
> @@ -115,8 +115,8 @@ static void radeon_evict_flags(struct ttm_buffer_obj=
ect *bo,
>   							 RADEON_GEM_DOMAIN_GTT);
>   			for (i =3D 0; i < rbo->placement.num_placement; i++) {
>   				if (rbo->placements[i].mem_type =3D=3D TTM_PL_VRAM) {
> -					if (rbo->placements[i].fpfn < fpfn)
> -						rbo->placements[i].fpfn =3D fpfn;
> +					if (rbo->placements[i].param1 < start)
> +						rbo->placements[i].param1 =3D start;
>   					rbo->placements[0].flags |=3D TTM_PL_FLAG_DESIRED;
>   				}
>   			}
> @@ -228,8 +228,8 @@ static int radeon_bo_move(struct ttm_buffer_object *=
bo, bool evict,
>   		     new_mem->mem_type =3D=3D TTM_PL_VRAM) ||
>   		    (old_mem->mem_type =3D=3D TTM_PL_VRAM &&
>   		     new_mem->mem_type =3D=3D TTM_PL_SYSTEM)) {
> -			hop->fpfn =3D 0;
> -			hop->lpfn =3D 0;
> +			hop->param1 =3D 0;
> +			hop->param2 =3D 0;
>   			hop->mem_type =3D TTM_PL_TT;
>   			hop->flags =3D 0;
>   			return -EMULTIHOP;
> @@ -698,7 +698,7 @@ int radeon_ttm_init(struct radeon_device *rdev)
>   		DRM_ERROR("Failed initializing VRAM heap.\n");
>   		return r;
>   	}
> -	/* Change the size here instead of the init above so only lpfn is affe=
cted */
> +	/* Change the size here instead of the init above so only param2 is af=
fected */
>   	radeon_ttm_set_active_vram_size(rdev, rdev->mc.visible_vram_size);
>  =20
>   	r =3D radeon_bo_create(rdev, 256 * 1024, PAGE_SIZE, true,
> @@ -765,7 +765,7 @@ void radeon_ttm_set_active_vram_size(struct radeon_d=
evice *rdev, u64 size)
>   		return;
>  =20
>   	man =3D ttm_manager_type(&rdev->mman.bdev, TTM_PL_VRAM);
> -	/* this just adjusts TTM size idea, which sets lpfn to the correct val=
ue */
> +	/* this just adjusts TTM size idea, which sets param2 to the correct v=
alue */
>   	man->size =3D size >> PAGE_SHIFT;
>   }
>  =20
> diff --git a/drivers/gpu/drm/radeon/radeon_uvd.c b/drivers/gpu/drm/radeo=
n/radeon_uvd.c
> index ded5747a58d1..b823d383d501 100644
> --- a/drivers/gpu/drm/radeon/radeon_uvd.c
> +++ b/drivers/gpu/drm/radeon/radeon_uvd.c
> @@ -307,8 +307,8 @@ void radeon_uvd_force_into_uvd_segment(struct radeon=
_bo *rbo,
>   	int i;
>  =20
>   	for (i =3D 0; i < rbo->placement.num_placement; ++i) {
> -		rbo->placements[i].fpfn =3D 0 >> PAGE_SHIFT;
> -		rbo->placements[i].lpfn =3D (256 * 1024 * 1024) >> PAGE_SHIFT;
> +		rbo->placements[i].param1 =3D 0 >> PAGE_SHIFT;
> +		rbo->placements[i].param2 =3D (256 * 1024 * 1024) >> PAGE_SHIFT;
>   	}
>  =20
>   	/* If it must be in VRAM it must be in the first segment as well */
> @@ -321,8 +321,8 @@ void radeon_uvd_force_into_uvd_segment(struct radeon=
_bo *rbo,
>  =20
>   	/* add another 256MB segment */
>   	rbo->placements[1] =3D rbo->placements[0];
> -	rbo->placements[1].fpfn +=3D (256 * 1024 * 1024) >> PAGE_SHIFT;
> -	rbo->placements[1].lpfn +=3D (256 * 1024 * 1024) >> PAGE_SHIFT;
> +	rbo->placements[1].param1 +=3D (256 * 1024 * 1024) >> PAGE_SHIFT;
> +	rbo->placements[1].param2 +=3D (256 * 1024 * 1024) >> PAGE_SHIFT;
>   	rbo->placement.num_placement++;
>   }
>  =20
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c b/drivers/gpu=
/drm/ttm/tests/ttm_kunit_helpers.c
> index 5cfe8f3f80d7..7d718a81cd13 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> @@ -10,22 +10,22 @@
>   #include "ttm_kunit_helpers.h"
>  =20
>   static const struct ttm_place sys_place =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D TTM_PL_SYSTEM,
>   	.flags =3D TTM_PL_FLAG_FALLBACK,
>   };
>  =20
>   static const struct ttm_place mock1_place =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D TTM_PL_MOCK1,
>   	.flags =3D TTM_PL_FLAG_FALLBACK,
>   };
>  =20
>   static const struct ttm_place mock2_place =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D TTM_PL_MOCK2,
>   	.flags =3D TTM_PL_FLAG_FALLBACK,
>   };
> @@ -76,8 +76,8 @@ static int mock_move(struct ttm_buffer_object *bo, boo=
l evict,
>   	    new_mem->mem_type =3D=3D TTM_PL_SYSTEM) {
>   		hop->mem_type =3D TTM_PL_TT;
>   		hop->flags =3D TTM_PL_FLAG_TEMPORARY;
> -		hop->fpfn =3D 0;
> -		hop->lpfn =3D 0;
> +		hop->param1 =3D 0;
> +		hop->param2 =3D 0;
>   		return -EMULTIHOP;
>   	}
>  =20
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c b/drivers/gpu/=
drm/ttm/tests/ttm_mock_manager.c
> index 0d91bc51f1a4..fef7b0d0294d 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
> @@ -32,7 +32,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_=
manager *man,
>   	struct ttm_mock_manager *manager =3D to_mock_mgr(man);
>   	struct ttm_mock_resource *mock_res;
>   	struct gpu_buddy *mm =3D &manager->mm;
> -	u64 lpfn, fpfn, alloc_size;
> +	u64 end, start, alloc_size;
>   	int err;
>  =20
>   	mock_res =3D kzalloc_obj(*mock_res);
> @@ -40,8 +40,8 @@ static int ttm_mock_manager_alloc(struct ttm_resource_=
manager *man,
>   	if (!mock_res)
>   		return -ENOMEM;
>  =20
> -	fpfn =3D 0;
> -	lpfn =3D man->size;
> +	start =3D 0;
> +	end =3D man->size;
>  =20
>   	ttm_resource_init(bo, place, &mock_res->base);
>   	INIT_LIST_HEAD(&mock_res->blocks);
> @@ -54,7 +54,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_=
manager *man,
>  =20
>   	alloc_size =3D (uint64_t)mock_res->base.size;
>   	mutex_lock(&manager->lock);
> -	err =3D gpu_buddy_alloc_blocks(mm, fpfn, lpfn, alloc_size,
> +	err =3D gpu_buddy_alloc_blocks(mm, start, end, alloc_size,
>   				     manager->default_page_size,
>   				     &mock_res->blocks,
>   				     mock_res->flags);
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm=
_bo_util.c
> index 3e3c201a0222..2bd5ec375a7c 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -1082,8 +1082,8 @@ long ttm_bo_shrink(struct ttm_operation_ctx *ctx, =
struct ttm_buffer_object *bo,
>   		   const struct ttm_bo_shrink_flags flags)
>   {
>   	static const struct ttm_place sys_placement_flags =3D {
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D TTM_PL_SYSTEM,
>   		.flags =3D 0,
>   	};
> diff --git a/drivers/gpu/drm/ttm/ttm_range_manager.c b/drivers/gpu/drm/t=
tm/ttm_range_manager.c
> index b818836f0726..9d28d2d06e63 100644
> --- a/drivers/gpu/drm/ttm/ttm_range_manager.c
> +++ b/drivers/gpu/drm/ttm/ttm_range_manager.c
> @@ -66,12 +66,12 @@ static int ttm_range_man_alloc(struct ttm_resource_m=
anager *man,
>   	struct ttm_range_mgr_node *node;
>   	struct drm_mm *mm =3D &rman->mm;
>   	enum drm_mm_insert_mode mode;
> -	unsigned long lpfn;
> +	unsigned long end;
>   	int ret;
>  =20
> -	lpfn =3D place->lpfn;
> -	if (!lpfn)
> -		lpfn =3D man->size;
> +	end =3D place->param2;
> +	if (!end)
> +		end =3D man->size;
>  =20
>   	node =3D kzalloc_flex(*node, mm_nodes, 1);
>   	if (!node)
> @@ -87,7 +87,7 @@ static int ttm_range_man_alloc(struct ttm_resource_man=
ager *man,
>   	ret =3D drm_mm_insert_node_in_range(mm, &node->mm_nodes[0],
>   					  PFN_UP(node->base.size),
>   					  bo->page_alignment, 0,
> -					  place->fpfn, lpfn, mode);
> +					  place->param1, end, mode);
>   	spin_unlock(&rman->lock);
>  =20
>   	if (unlikely(ret)) {
> @@ -124,8 +124,8 @@ static bool ttm_range_man_intersects(struct ttm_reso=
urce_manager *man,
>   	u32 num_pages =3D PFN_UP(size);
>  =20
>   	/* Don't evict BOs outside of the requested placement range */
> -	if (place->fpfn >=3D (node->start + num_pages) ||
> -	    (place->lpfn && place->lpfn <=3D node->start))
> +	if (place->param1 >=3D (node->start + num_pages) ||
> +	    (place->param2 && place->param2 <=3D node->start))
>   		return false;
>  =20
>   	return true;
> @@ -139,8 +139,8 @@ static bool ttm_range_man_compatible(struct ttm_reso=
urce_manager *man,
>   	struct drm_mm_node *node =3D &to_ttm_range_mgr_node(res)->mm_nodes[0]=
;
>   	u32 num_pages =3D PFN_UP(size);
>  =20
> -	if (node->start < place->fpfn ||
> -	    (place->lpfn && (node->start + num_pages) > place->lpfn))
> +	if (node->start < place->param1 ||
> +	    (place->param2 && (node->start + num_pages) > place->param2))
>   		return false;
>  =20
>   	return true;
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c b/drivers/gpu/drm/vmwgfx=
/vmwgfx_bo.c
> index 9c7a73c0b0dc..2af1dcb65b6f 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
> @@ -222,7 +222,7 @@ int vmw_bo_pin_in_start_of_vram(struct vmw_private *=
dev_priv,
>   	vmw_bo_placement_set(buf,
>   			     VMW_BO_DOMAIN_VRAM,
>   			     VMW_BO_DOMAIN_VRAM);
> -	buf->places[0].lpfn =3D PFN_UP(bo->resource->size);
> +	buf->places[0].param2 =3D PFN_UP(bo->resource->size);
>   	ret =3D ttm_bo_validate(bo, &buf->placement, &ctx);
>  =20
>   	/* For some reason we didn't end up at the start of vram */
> @@ -308,8 +308,8 @@ void vmw_bo_pin_reserved(struct vmw_bo *vbo, bool pi=
n)
>   	if (pin =3D=3D !!bo->pin_count)
>   		return;
>  =20
> -	pl.fpfn =3D 0;
> -	pl.lpfn =3D 0;
> +	pl.param1 =3D 0;
> +	pl.param2 =3D 0;
>   	pl.mem_type =3D bo->resource->mem_type;
>   	pl.flags =3D bo->resource->placement;
>  =20
> @@ -758,40 +758,40 @@ set_placement_list(struct ttm_place *pl, u32 desir=
ed, u32 fallback)
>   		pl[n].mem_type =3D VMW_PL_MOB;
>   		pl[n].flags =3D placement_flags(VMW_BO_DOMAIN_MOB, desired,
>   					      fallback);
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>   	if (domain & VMW_BO_DOMAIN_GMR) {
>   		pl[n].mem_type =3D VMW_PL_GMR;
>   		pl[n].flags =3D placement_flags(VMW_BO_DOMAIN_GMR, desired,
>   					      fallback);
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>   	if (domain & VMW_BO_DOMAIN_VRAM) {
>   		pl[n].mem_type =3D TTM_PL_VRAM;
>   		pl[n].flags =3D placement_flags(VMW_BO_DOMAIN_VRAM, desired,
>   					      fallback);
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>   	if (domain & VMW_BO_DOMAIN_WAITABLE_SYS) {
>   		pl[n].mem_type =3D VMW_PL_SYSTEM;
>   		pl[n].flags =3D placement_flags(VMW_BO_DOMAIN_WAITABLE_SYS,
>   					      desired, fallback);
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>   	if (domain & VMW_BO_DOMAIN_SYS) {
>   		pl[n].mem_type =3D TTM_PL_SYSTEM;
>   		pl[n].flags =3D placement_flags(VMW_BO_DOMAIN_SYS, desired,
>   					      fallback);
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>  =20
> @@ -799,8 +799,8 @@ set_placement_list(struct ttm_place *pl, u32 desired=
, u32 fallback)
>   	if (!n) {
>   		pl[n].mem_type =3D TTM_PL_SYSTEM;
>   		pl[n].flags =3D 0;
> -		pl[n].fpfn =3D 0;
> -		pl[n].lpfn =3D 0;
> +		pl[n].param1 =3D 0;
> +		pl[n].param2 =3D 0;
>   		n++;
>   	}
>   	return n;
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/dr=
m/vmwgfx/vmwgfx_ttm_buffer.c
> index dfd08ee19041..633d198d0fb8 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
> @@ -30,15 +30,15 @@
>   #include <drm/ttm/ttm_placement.h>
>  =20
>   static const struct ttm_place vram_placement_flags =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D TTM_PL_VRAM,
>   	.flags =3D 0
>   };
>  =20
>   static const struct ttm_place sys_placement_flags =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D TTM_PL_SYSTEM,
>   	.flags =3D 0
>   };
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index 4c80bac67622..05a45f154d6d 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -50,8 +50,8 @@ const char *const xe_mem_type_to_name[TTM_NUM_MEM_TYPE=
S]  =3D {
>   };
>  =20
>   static const struct ttm_place sys_placement_flags =3D {
> -	.fpfn =3D 0,
> -	.lpfn =3D 0,
> +	.param1 =3D 0,
> +	.param2 =3D 0,
>   	.mem_type =3D XE_PL_SYSTEM,
>   	.flags =3D 0,
>   };
> @@ -65,14 +65,14 @@ static struct ttm_placement purge_placement;
>  =20
>   static const struct ttm_place tt_placement_flags[] =3D {
>   	{
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D XE_PL_TT,
>   		.flags =3D TTM_PL_FLAG_DESIRED,
>   	},
>   	{
> -		.fpfn =3D 0,
> -		.lpfn =3D 0,
> +		.param1 =3D 0,
> +		.param2 =3D 0,
>   		.mem_type =3D XE_PL_SYSTEM,
>   		.flags =3D TTM_PL_FLAG_FALLBACK,
>   	}
> @@ -248,8 +248,8 @@ static void add_vram(struct xe_device *xe, struct xe=
_bo *bo,
>  =20
>   	if (io_size < vram->usable_size) {
>   		if (bo_flags & XE_BO_FLAG_NEEDS_CPU_ACCESS) {
> -			place.fpfn =3D 0;
> -			place.lpfn =3D io_size >> PAGE_SHIFT;
> +			place.param1 =3D 0;
> +			place.param2 =3D io_size >> PAGE_SHIFT;
>   		} else {
>   			place.flags |=3D TTM_PL_FLAG_TOPDOWN;
>   		}
> @@ -1072,8 +1072,8 @@ static int xe_bo_move(struct ttm_buffer_object *tt=
m_bo, bool evict,
>   	    ((old_mem_type =3D=3D XE_PL_SYSTEM && resource_is_vram(new_mem)) =
||
>   	     (mem_type_is_vram(old_mem_type) &&
>   	      new_mem->mem_type =3D=3D XE_PL_SYSTEM))) {
> -		hop->fpfn =3D 0;
> -		hop->lpfn =3D 0;
> +		hop->param1 =3D 0;
> +		hop->param2 =3D 0;
>   		hop->mem_type =3D XE_PL_TT;
>   		hop->flags =3D TTM_PL_FLAG_TEMPORARY;
>   		ret =3D -EMULTIHOP;
> @@ -2454,8 +2454,8 @@ static int __xe_bo_fixed_placement(struct xe_devic=
e *xe,
>   		return -EINVAL;
>  =20
>   	place->flags =3D TTM_PL_FLAG_CONTIGUOUS;
> -	place->fpfn =3D start >> PAGE_SHIFT;
> -	place->lpfn =3D end >> PAGE_SHIFT;
> +	place->param1 =3D start >> PAGE_SHIFT;
> +	place->param2 =3D end >> PAGE_SHIFT;
>  =20
>   	if (flags & XE_BO_FLAG_STOLEN)
>   		place->mem_type =3D XE_PL_STOLEN;
> diff --git a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c b/drivers/gpu/drm/xe/x=
e_ttm_vram_mgr.c
> index b518f7dec680..39ed1e87f4e9 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
> +++ b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
> @@ -55,14 +55,14 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_m=
anager *man,
>   	struct xe_ttm_vram_mgr_resource *vres;
>   	struct gpu_buddy *mm =3D &mgr->mm;
>   	u64 size, min_page_size;
> -	unsigned long lpfn;
> +	unsigned long end;
>   	int err;
>  =20
> -	lpfn =3D place->lpfn;
> -	if (!lpfn || lpfn > man->size >> PAGE_SHIFT)
> -		lpfn =3D man->size >> PAGE_SHIFT;
> +	end =3D place->param2;
> +	if (!end || end > man->size >> PAGE_SHIFT)
> +		end =3D man->size >> PAGE_SHIFT;
>  =20
> -	if (tbo->base.size >> PAGE_SHIFT > (lpfn - place->fpfn))
> +	if (tbo->base.size >> PAGE_SHIFT > (end - place->param1))
>   		return -E2BIG; /* don't trigger eviction for the impossible */
>  =20
>   	vres =3D kzalloc_obj(*vres);
> @@ -85,7 +85,7 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_man=
ager *man,
>   	if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
>   		vres->flags |=3D GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>  =20
> -	if (place->fpfn || lpfn !=3D man->size >> PAGE_SHIFT)
> +	if (place->param1 || end !=3D man->size >> PAGE_SHIFT)
>   		vres->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>  =20
>   	if (WARN_ON(!vres->base.size)) {
> @@ -109,18 +109,18 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource=
_manager *man,
>   	}
>  =20
>   	mutex_lock(&mgr->lock);
> -	if (lpfn <=3D mgr->visible_size >> PAGE_SHIFT && size > mgr->visible_a=
vail) {
> +	if (end <=3D mgr->visible_size >> PAGE_SHIFT && size > mgr->visible_av=
ail) {
>   		err =3D -ENOSPC;
>   		goto error_unlock;
>   	}
>  =20
> -	err =3D gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
> -				     (u64)lpfn << PAGE_SHIFT, size,
> +	err =3D gpu_buddy_alloc_blocks(mm, (u64)place->param1 << PAGE_SHIFT,
> +				     (u64)end << PAGE_SHIFT, size,
>   				     min_page_size, &vres->blocks, vres->flags);
>   	if (err)
>   		goto error_unlock;
>  =20
> -	if (lpfn <=3D mgr->visible_size >> PAGE_SHIFT) {
> +	if (end <=3D mgr->visible_size >> PAGE_SHIFT) {
>   		vres->used_visible_size =3D size;
>   	} else {
>   		struct gpu_buddy_block *block;
> @@ -217,19 +217,19 @@ static bool xe_ttm_vram_mgr_intersects(struct ttm_=
resource_manager *man,
>   	struct gpu_buddy *mm =3D &mgr->mm;
>   	struct gpu_buddy_block *block;
>  =20
> -	if (!place->fpfn && !place->lpfn)
> +	if (!place->param1 && !place->param2)
>   		return true;
>  =20
> -	if (!place->fpfn && place->lpfn =3D=3D mgr->visible_size >> PAGE_SHIFT=
)
> +	if (!place->param1 && place->param2 =3D=3D mgr->visible_size >> PAGE_S=
HIFT)
>   		return vres->used_visible_size > 0;
>  =20
>   	list_for_each_entry(block, &vres->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>  =20
> -		if (place->fpfn < lpfn && place->lpfn > fpfn)
> +		if (place->param1 < end && place->param2 > start)
>   			return true;
>   	}
>  =20
> @@ -247,19 +247,19 @@ static bool xe_ttm_vram_mgr_compatible(struct ttm_=
resource_manager *man,
>   	struct gpu_buddy *mm =3D &mgr->mm;
>   	struct gpu_buddy_block *block;
>  =20
> -	if (!place->fpfn && !place->lpfn)
> +	if (!place->param1 && !place->param2)
>   		return true;
>  =20
> -	if (!place->fpfn && place->lpfn =3D=3D mgr->visible_size >> PAGE_SHIFT=
)
> +	if (!place->param1 && place->param2 =3D=3D mgr->visible_size >> PAGE_S=
HIFT)
>   		return vres->used_visible_size =3D=3D size;
>  =20
>   	list_for_each_entry(block, &vres->blocks, link) {
> -		unsigned long fpfn =3D
> +		unsigned long start =3D
>   			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
> -		unsigned long lpfn =3D fpfn +
> +		unsigned long end =3D start +
>   			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>  =20
> -		if (fpfn < place->fpfn || lpfn > place->lpfn)
> +		if (start < place->param1 || end > place->param2)
>   			return false;
>   	}
>  =20
> diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_place=
ment.h
> index ab2639e42c54..2c38674be102 100644
> --- a/include/drm/ttm/ttm_placement.h
> +++ b/include/drm/ttm/ttm_placement.h
> @@ -73,16 +73,23 @@
>   /**
>    * struct ttm_place
>    *
> - * @fpfn:	first valid page frame number to put the object
> - * @lpfn:	last valid page frame number to put the object
> + * @param1:	generic placement parameter, interpretation depends on the
> + *		backend resource manager. For range-based managers (e.g. the
> + *		VRAM range manager, the buddy managers in amdgpu/i915/xe and
> + *		the TTM range manager) this is the start of the allowed range,
> + *		typically expressed as a page frame number.
> + * @param2:	generic placement parameter, interpretation depends on the
> + *		backend resource manager. For range-based managers this is the
> + *		exclusive end of the allowed range (a value of 0 means
> + *		"no upper bound").
>    * @mem_type:	One of TTM_PL_* where the resource should be allocated f=
rom.
>    * @flags:	memory domain and caching flags for the object
>    *
>    * Structure indicating a possible place to put an object.
>    */
>   struct ttm_place {
> -	uint64_t	fpfn;
> -	uint64_t	lpfn;
> +	uint64_t	param1;
> +	uint64_t	param2;
>   	uint32_t	mem_type;
>   	uint32_t	flags;
>   };
>=20
> base-commit: b9e2d5cdaab05c997be3a69d9b372d7676683e1b

