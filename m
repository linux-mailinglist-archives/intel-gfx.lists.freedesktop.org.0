Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5918BBD592D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 19:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0309810E1DD;
	Mon, 13 Oct 2025 17:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="key not found in DNS" (0-bit key; secure) header.d=marlonhenq.dev header.i=@marlonhenq.dev header.b="p6ODQ97a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 947 seconds by postgrey-1.36 at gabe;
 Mon, 13 Oct 2025 17:48:18 UTC
Received: from bird.tulip.relay.mailchannels.net
 (bird.tulip.relay.mailchannels.net [23.83.218.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691AA10E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 17:48:18 +0000 (UTC)
X-Sender-Id: hostingeremail|x-authuser|marlon@marlonhenq.dev
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id C085B741044
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 17:32:30 +0000 (UTC)
Received: from de-fra-smtpout8.hostinger.io
 (trex-green-6.trex.outbound.svc.cluster.local [100.114.109.107])
 (Authenticated sender: hostingeremail)
 by relay.mailchannels.net (Postfix) with ESMTPA id F351B741A9B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 17:32:25 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1760376746; a=rsa-sha256;
 cv=none;
 b=xjMOH2JOFD5Nu6X+riBXCfq6h0TfzVIqCOvScIce10Ws5+iwgwt5kDHpRvANBsoSxfOYMd
 S3zb1/3F+DOq3ZB9ZcMDWAbFaNeU2z+XqCRUg6MF270A9xPISUMVXD9k8XqZgKRqSsl0WA
 mOBSTpMSH5cJwi6k5lxShBPlQIuC5Sm3H8mh7VQEOhswFUwafxtIQ7D1LlAVc7qltih2Z4
 HUp9fG9jImuxENRcpWKhY8hn3Ou5efZSpeLf/x5H5oqEWWHhw2pCNKzAMHJ4v8VzxrMiy1
 kK5Z7TrKuEJipp2m1SFYCGwv6miaSy7kXkqIo/wbMruR5xCkvh69foLu7yIzhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1760376746;
 h=from:from:reply-to:subject:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:dkim-signature;
 bh=OAmNoz83aogFQf6zHf+cpezxU3ye0SjjqwT6dhw949g=;
 b=z4Be1FvhFwcpMuFckk1PpxuhJrka6wNQlIYvqdCOBM+Ut4NFthknO1RGk9NtN8SGbOWp2O
 6ibd66JH60l+e9MHT4YMnhbx0iqzADojEhbcVteiiG7bRBKLe5OVHi+epk24ySd+715d3F
 t0KKE/yb9fjDYx4k1Ft5ZjcU+M+rqJZZmvBTjGn6JPC/VYgSBdQ1JwqReVISoZDVwbnTHq
 JGpCIXxS+JIStNmXq81r5LkevxjqR0j/STUoi35mlBCODNjaPY7PRr8egwDTooYTCQlzlO
 VELDJkxshtfHIMhTVxIsorWXo1KHddtyJwom+KcE1Jq7NJMTU4UB2zR0LGv+pA==
ARC-Authentication-Results: i=1; rspamd-668c7f7ff9-plh7k;
 auth=pass smtp.auth=hostingeremail smtp.mailfrom=Marlon@marlonhenq.dev
X-Sender-Id: hostingeremail|x-authuser|marlon@marlonhenq.dev
X-MC-Relay: Junk
X-MailChannels-SenderId: hostingeremail|x-authuser|marlon@marlonhenq.dev
X-MailChannels-Auth-Id: hostingeremail
X-Tangy-Robust: 4de0e897734ebbc5_1760376750515_1339443937
X-MC-Loop-Signature: 1760376750515:2669685920
X-MC-Ingress-Time: 1760376750515
Received: from de-fra-smtpout8.hostinger.io (de-fra-smtpout8.hostinger.io
 [148.222.55.13]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.114.109.107 (trex/7.1.3); Mon, 13 Oct 2025 17:32:30 +0000
Received: from pop-os (unknown [189.7.87.127])
 (Authenticated sender: marlon@marlonhenq.dev)
 by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4clktv3ql1z3wgs
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 17:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marlonhenq.dev;
 s=hostingermail-a; t=1760376744;
 h=from:from:reply-to:subject:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type;
 bh=OAmNoz83aogFQf6zHf+cpezxU3ye0SjjqwT6dhw949g=;
 b=p6ODQ97agpjQIMjCfTP4IVpDzpSGYJXPiTvRlnaHYWGfW7MvNR/AW1Kz1FDZbygTsFPZv2
 OxfIjvlf15EhHIsU/7/XotlDobTQiUFRpA8Z6ND5MA7r2GptcIShn5XSmk0DiCZV60dh9E
 g1+7ItJkTEZ+U/qv2DwCdvxdgO2jdoCUoJoQsY9imXsKaCWf8iy7CE2NjUNGBQBg/+Gl/E
 ocVYbP9Y6UXXkXd+Lb7mF5C0bCpX8EjBR/fsMOCAxSe4XbM6vwMYBHqlGmlvRsWZ0uCUs5
 rnUllR/nkjgq/1nNY7hhhSv3bZGAntMm3sWv9wyo23l3vCIkqVXLHsypmQwn/Q==
From: Marlon Sanches <Marlon@marlonhenq.dev>
To: "=?utf-8?Q?intel-gfx=40lists.freedesktop.org?="
 <intel-gfx@lists.freedesktop.org>
Message-ID: <C35E7B37-8DF6-45AA-B36A-27EC08BCF237@getmailspring.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="68ed37a4_16fe0151_57c8f"
Date: Mon, 13 Oct 2025 17:32:23 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=WLUtXWsR c=1 sm=1 tr=0 ts=68ed37a8
 a=cVipK185uvyWkAKCMbEkjg==:117 a=cVipK185uvyWkAKCMbEkjg==:17
 a=s5jvgZ67dGcA:10 a=oZcIvM_xAAAA:20 a=HMgIHKPsAAAA:8 a=mxZB-38NAAAA:8
 a=uO89JHDY7xBL3dbKRtYA:9 a=Cj5eudk1JWjmQ+hWx3VqfHwN+JY=:19 a=QEXdDO2ut3YA:10
 a=XIbcIwYT4C9kZWJs2EAA:9 a=zlHw0IaLQHHIB9xE:21 a=5K7_D-k2Z8B24yFUcOAY:22
 a=QTl5MxMIngtcw8VW2K5V:22
X-CM-Envelope: MS4xfFM9QTBkK9iSmObs4C/iZdFyIxetbXiO3/FBtKpJvwNJ5A9p/RSo+Uc1lRkKsp1PdEPfUXbzJw/yJ01PyjjGUUasU+FJUf6Is7w2GVhTyZztSouv9cMV
 1kPBS3iAp/C2VlRIQFM+4J90hddEacagd9ELrSJe2d3grVuC/u21IUDXFVOdn65G3K7/xKhKUxu1IA==
X-AuthUser: marlon@marlonhenq.dev
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

--68ed37a4_16fe0151_57c8f
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline



Marlon Sanches
marlon@marlonhenq.dev (https://link.getmailspring.com/link/C35E7B37-8DF6-45AA-B36A-27EC08BCF237@getmailspring.com/0?redirect=mailto%3Amarlon%40marlonhenq.dev&recipient=aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw%3D%3D)
http://marlonhenq.dev (https://link.getmailspring.com/link/C35E7B37-8DF6-45AA-B36A-27EC08BCF237@getmailspring.com/1?redirect=http%3A%2F%2Fmarlonhenq.dev&recipient=aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw%3D%3D)


--68ed37a4_16fe0151_57c8f
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<br><br><signature id=3D=22local-69519a7d-c023=22><table cellpadding=3D=22=
0=22 cellspacing=3D=220=22><tbody><tr><td style=3D=22vertical-align:top=22=
></td><td><div>Marlon Sanches</div><div style=3D=22font-size:0.9em;border=
-top:1px solid gray;min-width:250px;max-width:300px;margin-top:4px;paddin=
g-top:4px=22><div><div><a href=3D=22https://link.getmailspring.com/link/C=
35E7B37-8D=466-45AA-B36A-27EC08BC=46237=40getmailspring.com/0=3Fredirect=3D=
mailto%3Amarlon%40marlonhenq.dev&amp;recipient=3DaW50ZWwtZ2Z4QGxpc3RzLmZy=
ZWVkZXNrdG9wLm9yZw%3D%3D=22>marlon=40marlonhenq.dev</a></div><div></div><=
div><a href=3D=22https://link.getmailspring.com/link/C35E7B37-8D=466-45AA=
-B36A-27EC08BC=46237=40getmailspring.com/1=3Fredirect=3Dhttp%3A%2=46%2=46=
marlonhenq.dev&amp;recipient=3DaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw=
%3D%3D=22>http://marlonhenq.dev</a></div><div></div></div></div></td></tr=
></tbody></table></signature><img class=3D=22mailspring-open=22 alt=3D=22=
Sent from Mailspring=22 width=3D=220=22 height=3D=220=22 style=3D=22borde=
r:0; width:0; height:0;=22 src=3D=22https://link.getmailspring.com/open/C=
35E7B37-8D=466-45AA-B36A-27EC08BC=46237=40getmailspring.com=3Fme=3D7336b5=
fb&amp;recipient=3DaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw%3D%3D=22>
--68ed37a4_16fe0151_57c8f--

