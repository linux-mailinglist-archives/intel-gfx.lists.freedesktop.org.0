Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57965B360B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 09:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0ED6E87B;
	Mon, 16 Sep 2019 07:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B035E6E87B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 07:59:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8G7x5K3053148;
 Mon, 16 Sep 2019 07:59:24 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2v0r5p5rhj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2019 07:59:23 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8G7xAMn141309;
 Mon, 16 Sep 2019 07:59:23 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2v0nb456y4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2019 07:59:22 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8G7xK4U014786;
 Mon, 16 Sep 2019 07:59:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 16 Sep 2019 00:59:19 -0700
Date: Mon, 16 Sep 2019 10:59:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190916075913.GZ20699@kadam>
References: <20190914040858.GT20699@kadam>
 <87lfuou27c.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfuou27c.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9381
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=965
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909160087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9381
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909160087
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=n+dxcsH/SFNpvn+bulzJejG04vvg5UuaVG7+iOlzwns=;
 b=BhGOqd7v7+mtlsn4m26/f9i2Vd+7cKHTqjNTw9RK66IpaMxVuozrhCVbU6yZKRGHXvwU
 OVBQTgA7z5wEb55CyBFId5UDDn62U74mb8EmeT9NwQjolq8QeFVAbV8wJ29bsIyNk6Qa
 r69tgaKAVljfY6sYuJdwJQ7MxmrD8ByBPJQpWc6SqQLcG0dpbkGqmwpEFa6VvXrl8m0L
 n2bYud7vSdWAKgYkZfprkphHhJxuDbmZPoR9nKUnsGtfQgL6QtAwTO/upzXpkEHk33dp
 tYueoV/URjT2LQfwOenRFg3SRYYmyx0bBe3C4YRw07wXp7nVKDc81xP0+1tW62qLbWjD qQ== 
Subject: Re: [Intel-gfx] drivers/gpu/drm/i915/display/intel_display.c:3934
 skl_plane_stride() error: testing array offset 'color_plane' after use.
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kbuild@01.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTA6MzE6MzVBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gU2F0LCAxNCBTZXAgMjAxOSwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBv
cmFjbGUuY29tPiB3cm90ZToKPiA+IHRyZWU6ICAgaHR0cHM6Ly9rZXJuZWwuZ29vZ2xlc291cmNl
LmNvbS9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0IG1hc3Rlcgo+
ID4gaGVhZDogICBhN2Y4OTYxNmI3Mzc2NDk1NDI0ZjY4MmI2MDg2ZTBjMzkxYTg5YTFkCj4gPiBj
b21taXQ6IGRmMDU2NmE2NDFmOTU5MTA4YzE1MmJlNzQ4YTBhNTg3OTQyODBlMGUgZHJtL2k5MTU6
IG1vdmUgbW9kZXNldHRpbmcgY29yZSBjb2RlIHVuZGVyIGRpc3BsYXkvCj4gPiBkYXRlOiAgIDMg
bW9udGhzIGFnbwo+ID4KPiA+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkgYWRkIGZvbGxv
d2luZyB0YWcKPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KPiA+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5j
b20+Cj4gPgo+ID4gTmV3IHNtYXRjaCB3YXJuaW5nczoKPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjM5MzQgc2tsX3BsYW5lX3N0cmlkZSgpIGVycm9yOiB0
ZXN0aW5nIGFycmF5IG9mZnNldCAnY29sb3JfcGxhbmUnIGFmdGVyIHVzZS4KPiA+IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE2MzI4IGludGVsX3Nhbml0aXpl
X2VuY29kZXIoKSBlcnJvcjogd2UgcHJldmlvdXNseSBhc3N1bWVkICdjcnRjJyBjb3VsZCBiZSBu
dWxsIChzZWUgbGluZSAxNjMxOCkKPiAKPiBPZGQsIHdoYXQgY2hhbmdlZCB0byBwcm92b2tlIHRo
ZSB3YXJuaW5ncyBub3c/IE9yIGlzIHRoZSBzbWF0Y2ggdGVzdAo+IG5ldz8KPiAKCkl0IGxvb2tz
IGxpa2UgdGhlIGNyb3NzIGZ1bmN0aW9uIERCIGlzIG91dCBvZiBkYXRhIHNsaWdodGx5LiAgTWF5
YmUKYmVjYXVzZSB0aGUgZmlsZSBtb3ZlZD8gIE9uIG15IHN5c3RlbSBTbWF0Y2gga25vd3MgdGhh
dCBjb2xvcl9wbGFuZSBpcwowLTEgYW5kIHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtdIGlzIGEg
dHdvIGVsZW1lbnQgYXJyYXkgc28gaXQgZG9lc24ndApwcmludCB0aGUgd2FybmluZy4KClRoaXMg
aXMganVzdCBhIHNhbml0eSBjaGVjayB3aGljaCBpcyBuZXZlciB0cmlnZ2VyZWQuICBTaG91bGQg
dGhlIHNhbml0eQpjaGVjayBiZSBtb3ZlPyAgV2hhdCB3YXMgb3JpZ2luYWxseSBpbnRlbmRlZD8g
IEl0J3MgaGFyZCB0byBzYXkuCgpyZWdhcmRzLApkYW4gY2FycGVudGVyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
