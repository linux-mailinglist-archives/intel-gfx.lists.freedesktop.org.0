Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F356E6BEDD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 17:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543106E0F8;
	Wed, 17 Jul 2019 15:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABBA6E0F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 15:14:04 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42A1D2182B;
 Wed, 17 Jul 2019 15:14:04 +0000 (UTC)
Date: Wed, 17 Jul 2019 15:14:03 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190717114536.22937-1-ville.syrjala@linux.intel.com>
References: <20190717114536.22937-1-ville.syrjala@linux.intel.com>
Message-Id: <20190717151404.42A1D2182B@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1563376444;
 bh=7X8bRyPdfJ7jGVGo1LQTY1b3xuhmhd+OFjfZwmc4WyI=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=lQNduzvJafraZWLcgdPmp3D7bh040ReM7xw93edjESs7/A4dXeEykLeT5wPU5wgJM
 XCgNl+yzpFUjNScclniFFe835vYooirjozczWc4IbmPp0nyPTeSvY870X8RIDorMV6
 MzjGpBtHCfmnTV+LyGE+daxswAljIwMKA3G/Enqs=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make sure cdclk is high enough
 for DP audio on VLV/CHV
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
Cc: Stefan Gottwald <gottwald@igel.com>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhIC1zdGFibGUgdGFnLgpUaGUgc3RhYmxlIHRh
ZyBpbmRpY2F0ZXMgdGhhdCBpdCdzIHJlbGV2YW50IGZvciB0aGUgZm9sbG93aW5nIHRyZWVzOiBh
bGwKClRoZSBib3QgaGFzIHRlc3RlZCB0aGUgZm9sbG93aW5nIHRyZWVzOiB2NS4yLjEsIHY1LjEu
MTgsIHY0LjE5LjU5LCB2NC4xNC4xMzMsIHY0LjkuMTg1LCB2NC40LjE4NS4KCnY1LjIuMTogRmFp
bGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICBVbmFibGUgdG8gY2FsY3Vs
YXRlCgp2NS4xLjE4OiBGYWlsZWQgdG8gYXBwbHkhIFBvc3NpYmxlIGRlcGVuZGVuY2llczoKICAg
IFVuYWJsZSB0byBjYWxjdWxhdGUKCnY0LjE5LjU5OiBGYWlsZWQgdG8gYXBwbHkhIFBvc3NpYmxl
IGRlcGVuZGVuY2llczoKICAgIFVuYWJsZSB0byBjYWxjdWxhdGUKCnY0LjE0LjEzMzogRmFpbGVk
IHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICA5YzYxZGU0YzY5YTIgKCJkcm0v
aTkxNTogQ29uc29saWRhdGUgbWF4X2NkY2xrX2ZyZXEgY2hlY2sgaW4gaW50ZWxfY3J0Y19jb21w
dXRlX21pbl9jZGNsaygpIikKICAgIGM4ZGFlNTVhOGNlZCAoImRybS9pOTE1L3ZsdjogQWRkIGNk
Y2xrIHdvcmthcm91bmQgZm9yIERTSSIpCiAgICBkMzA1ZTA2MTQ2MDEgKCJkcm0vaTkxNTogVHJh
Y2sgbWluaW11bSBhY2NlcHRhYmxlIGNkY2xrIGluc3RlYWQgb2YgIm1pbmltdW0gZG90Y2xvY2si
IikKCnY0LjkuMTg1OiBGYWlsZWQgdG8gYXBwbHkhIFBvc3NpYmxlIGRlcGVuZGVuY2llczoKICAg
IDI5NDU5MWNmYmQyYiAoImRybS9pOTE1OiBVcGRhdGUga2VybmVsZG9jIGZvciBpbnRlbF9kcGxs
X21nci5jIikKICAgIDJjNDJlNTM1MTQ0NSAoImRybS9pOTE1OiBSZW5hbWUgaW50ZWxfc2hhcmVk
X2RwbGxfY29uZmlnIHRvIGludGVsX3NoYXJlZF9kcGxsX3N0YXRlIikKICAgIDNjMGZiNTg4MjBh
YyAoImRybS9pOTE1OiBSZW5hbWUgaW50ZWxfc2hhcmVkX2RwbGxfY29tbWl0KCkgdG8gX3N3YXBf
c3RhdGUoKSIpCiAgICA0N2E2YmM2MWI4NjYgKCJkcm0vaTkxNTogTW92ZSBicm94dG9uIHBoeSBj
b2RlIHRvIGludGVsX2RwaW9fcGh5LmMiKQogICAgN2ZmODljYTIxMzU4ICgiZHJtL2k5MTU6IE1v
dmUgbW9zdCBjZGNsay9yYXdjbGsgcmVsYXRlZCBjb2RlIHRvIGludGVsX2NkY2xrLmMiKQogICAg
ODQyZDQxNjY1NGViICgiZHJtL2k5MTU6IENyZWF0ZSBhIHN0cnVjdCB0byBob2xkIGluZm9ybWF0
aW9uIGFib3V0IHRoZSBicm94dG9uIHBoeXMiKQogICAgOGNiZWIwNmRjNmI1ICgiZHJtL2k5MTU6
IEltcGxlbWVudCBjZGNsayByZXN0cmljdGlvbnMgYmFzZWQgb24gQXphbGlhIEJDTEsiKQogICAg
YTFjNDE0ZWU4MmQ5ICgiZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9yZWxlYXNlX3NoYXJlZF9k
cGxsKCkiKQogICAgYjI4NGVlZGFmNzRiICgiZHJtL2k5MTU6IFBhc3MgbGFuZSBjb3VudCB0byBi
eHRfZGRpX3BoeV9jYWxjX2xhbmVfb3B0bWluX21hc2soKSIpCiAgICBiNmUwODIwM2NjMWYgKCJk
cm0vaTkxNTogTW92ZSBicm94dG9uIHZzd2luZyBzZXF1ZW5jZSB0byBpbnRlbF9kcGlvX3BoeS5j
IikKICAgIGM4ZGFlNTVhOGNlZCAoImRybS9pOTE1L3ZsdjogQWRkIGNkY2xrIHdvcmthcm91bmQg
Zm9yIERTSSIpCiAgICBlZDM3ODkyZTZkZjIgKCJkcm0vaTkxNTogQWRkcmVzcyBicm94dG9uIHBo
eSByZWdpc3RlcnMgYmFzZWQgb24gcGh5IGFuZCBjaGFubmVsIG51bWJlciIpCiAgICBmMzg4NjFi
ODE0YjUgKCJkcm0vaTkxNTogTW92ZSBEUElPIHBoeSBkb2N1bWVudGF0aW9uIHNlY3Rpb24gdG8g
aW50ZWxfZHBpb19waHkuYyIpCgp2NC40LjE4NTogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBk
ZXBlbmRlbmNpZXM6CiAgICAxMmZkYTM4NzZkMDggKCJkcm0vaTkxNS9pYng6IEVuc3VyZSB0aGUg
SFcgaXMgcG93ZXJlZCBkdXJpbmcgUExMIEhXIHJlYWRvdXQiKQogICAgMjJjYmEzMWJhZTlkICgi
RG9jdW1lbnRhdGlvbi9zcGhpbng6IGFkZCBiYXNpYyB3b3JraW5nIFNwaGlueCBjb25maWd1cmF0
aW9uIGFuZCBidWlsZCIpCiAgICAyOTQ1OTFjZmJkMmIgKCJkcm0vaTkxNTogVXBkYXRlIGtlcm5l
bGRvYyBmb3IgaW50ZWxfZHBsbF9tZ3IuYyIpCiAgICA2NGUxMDc3YTFmOTMgKCJkcm0vaTkxNTog
Q2xlYW4gdXAgZURQIFBMTCBzdGF0ZSBhc3NlcnRzIikKICAgIDdhYmQ0YjM1YTU3NyAoImRybS9p
OTE1OiBNb3ZlIHNoYXJlZCBkcGxsIGNvZGUgdG8gYSBuZXcgZmlsZSIpCiAgICA3ZmY4OWNhMjEz
NTggKCJkcm0vaTkxNTogTW92ZSBtb3N0IGNkY2xrL3Jhd2NsayByZWxhdGVkIGNvZGUgdG8gaW50
ZWxfY2RjbGsuYyIpCiAgICA4N2FkMzIxMjg3YWUgKCJkcm0vaTkxNTogYWRkIG9ub2ZmIHV0aWxp
dHkgZnVuY3Rpb24iKQogICAgOGNiZWIwNmRjNmI1ICgiZHJtL2k5MTU6IEltcGxlbWVudCBjZGNs
ayByZXN0cmljdGlvbnMgYmFzZWQgb24gQXphbGlhIEJDTEsiKQogICAgYzhkYWU1NWE4Y2VkICgi
ZHJtL2k5MTUvdmx2OiBBZGQgY2RjbGsgd29ya2Fyb3VuZCBmb3IgRFNJIikKICAgIGNhMDBjMmI5
ODZlYSAoIkRvY3VtZW50YXRpb24vZ3B1OiBzcGxpdCB1cCB0aGUgZ3B1IGRvY3VtZW50YXRpb24i
KQogICAgY2I1OTdmY2VhNWMyICgiRG9jdW1lbnRhdGlvbi9ncHU6IGFkZCBuZXcgZ3B1LnJzdCBj
b252ZXJ0ZWQgZnJvbSBEb2NCb29rIGdwdS50bXBsIikKICAgIGYxNjk2NjBlZDRlNSAoImRybS9p
OTE1L2RwOiBBZGQgYSBzdGFuZGFsb25lIGZ1bmN0aW9uIHRvIG9idGFpbiBzaGFyZWQgZHBsbCBm
b3IgSFNXL0JEVy9TS0wvQlhUIikKCgpOT1RFOiBUaGUgcGF0Y2ggd2lsbCBub3QgYmUgcXVldWVk
IHRvIHN0YWJsZSB0cmVlcyB1bnRpbCBpdCBpcyB1cHN0cmVhbS4KCkhvdyBzaG91bGQgd2UgcHJv
Y2VlZCB3aXRoIHRoaXMgcGF0Y2g/CgotLQpUaGFua3MsClNhc2hhCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
