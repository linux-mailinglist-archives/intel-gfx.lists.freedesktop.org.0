Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6622DC93
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 14:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34CA89E0D;
	Wed, 29 May 2019 12:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4579389E0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 12:20:53 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TCJRpO101626;
 Wed, 29 May 2019 12:20:48 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2spxbq96a0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 12:20:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4TCKCA9193723;
 Wed, 29 May 2019 12:20:48 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2sr31v7rj2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 May 2019 12:20:47 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4TCKkx1024406;
 Wed, 29 May 2019 12:20:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 May 2019 05:20:46 -0700
Date: Wed, 29 May 2019 15:20:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190529122039.GL24680@kadam>
References: <20190529115243.GA22431@mwanda>
 <155913173961.13891.17214046858605031723@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155913173961.13891.17214046858605031723@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290082
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=ab4ji+I3yx37Z+ta0cGj8LdnmuO1OdVqN3FY/7B/zc0=;
 b=fksqurPFFs03S13S+q/0L1Mej31yjS1zboUYpUs5FaumarQdSaXnJVCFZ1i6s9shYnFl
 5z5DpoCGOXok50eNz8wOM7OuuH+7CagX6Vy0tX8X9YAFhCT+TTBd1jhxCTYGjCtYmSN2
 Zzg90BNbEjv/89IBzq2RZRPpH711P+enJKQyeLbJbK7wctxOY1nkjOikkMDGHhcIM1W+
 bBmrbyJyHTVt7h6OeaHOh+f02Z4pV6cb9cpu5btD9bbhX7KDKSawtDVdJN5DrLJGYMtQ
 mk/fQRsqauDKrNOA51x77Pf5CckUDBhEHlWFcE71VxOD+Fhk3pH8tpBHdrmy3EWOgr9+ ww== 
Subject: Re: [Intel-gfx] [bug report] drm/i915: Engine discovery query
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMDE6MDg6NTlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuIENhcnBlbnRlciAoMjAxOS0wNS0yOSAxMjo1Mjo0MykKPiA+IEhl
bGxvIFR2cnRrbyBVcnN1bGluLAo+ID4gCj4gPiBUaGUgcGF0Y2ggYzVkM2UzOWNhYTQ1OiAiZHJt
L2k5MTU6IEVuZ2luZSBkaXNjb3ZlcnkgcXVlcnkiIGZyb20gTWF5Cj4gPiAyMiwgMjAxOSwgbGVh
ZHMgdG8gdGhlIGZvbGxvd2luZyBzdGF0aWMgY2hlY2tlciB3YXJuaW5nOgo+ID4gCj4gPiAgICAg
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYzoxMzQgcXVlcnlfZW5naW5lX2lu
Zm8oKQo+ID4gICAgICAgICB3YXJuOiBjYWxsaW5nICdfX2NvcHlfdG9fdXNlcigpJyB3aXRob3V0
IGFjY2Vzc19vaygpCj4gPiAKPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwo+
ID4gICAgIDk3ICBxdWVyeV9lbmdpbmVfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPiA+ICAgICA5OCAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2l0
ZW0gKnF1ZXJ5X2l0ZW0pCj4gPiAgICAgOTkgIHsKPiA+ICAgIDEwMCAgICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcXVlcnlfZW5naW5lX2luZm8gX191c2VyICpxdWVyeV9wdHIgPQo+ID4gICAgMTAx
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHU2NF90b191c2VyX3B0cihxdWVyeV9p
dGVtLT5kYXRhX3B0cik7Cj4gPiAKPiA+IHF1ZXJ5X2l0ZW0tPmRhdGFfcHRyIGNvbWVzIGZyb20g
dGhlIGlvY3RsIGFuZCBoYXNuJ3QgYmVlbiBjaGVja2VkLgo+IAo+IGNvcHlfcXVlcnlfaXRlbXMo
KSBkb2VzIHRoZSBhY2Nlc3Nfb2soKSBjaGVjayBmb3IgdGhlIGRhdGEgcG9ydGlvbiBhZnRlcgo+
IHRoZSBoZWFkZXIuCgpBaCB5ZWFoLiAgWW91J3JlIHJpZ2h0LiAgVGhhbmtzIQoKcmVnYXJkcywK
ZGFuIGNhcnBlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
