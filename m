Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAA236E8D7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 12:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABEC6EDEC;
	Thu, 29 Apr 2021 10:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63E26EDEC;
 Thu, 29 Apr 2021 10:34:56 +0000 (UTC)
IronPort-SDR: lIr6h5dK5uC1QmMYPKVA8Nbd9Mg8HClUxPKyOfB550qGex2P3CVO1pZ4aqnOVlsYzhsC/9XKu6
 TObB8ybnw1NA==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="184449664"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="184449664"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:34:55 -0700
IronPort-SDR: htwqjm8WV5wtEH7xrJ+LjDYTVdXolho41hFWYzyqKREfGXlQkHIFKruRlw2Jk83HNU0r3XaDZg
 BCFDuOMdegwA==
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="458694094"
Received: from sbfennel-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.12.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:34:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 11:30:48 +0100
Message-Id: <20210429103056.407067-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/9] drm/doc/rfc: i915 DG1 uAPI
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
Cc: Lionel Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Dave Airlie <airlied@redhat.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, mesa-dev@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGFuIGVudHJ5IGZvciB0aGUgbmV3IHVBUEkgbmVlZGVkIGZvciBERzEuIEFsc28gYWRkIHRo
ZSBvdmVyYWxsCnVwc3RyZWFtIHBsYW4sIGluY2x1ZGluZyBzb21lIG5vdGVzIGZvciB0aGUgVFRN
IGNvbnZlcnNpb24uCgp2MihEYW5pZWwpOgogIC0gaW5jbHVkZSB0aGUgb3ZlcmFsbCB1cHN0cmVh
bWluZyBwbGFuCiAgLSBhZGQgYSBub3RlIGZvciBtbWFwLCB0aGVyZSBhcmUgZGlmZmVyZW5jZXMg
aGVyZSBmb3IgVFRNIHZzIGk5MTUKICAtIGJ1bmNoIG9mIG90aGVyIHN1Z2dlc3Rpb25zIGZyb20g
RGFuaWVsCnYzOgogKERhbmllbCkKICAtIGFkZCBhIG5vdGUgZm9yIHNldC9nZXQgY2FjaGluZyBz
dHVmZgogIC0gYWRkIHNvbWUgbW9yZSBkb2NzIGZvciBleGlzdGluZyBxdWVyeSBhbmQgZXh0ZW5z
aW9ucyBzdHVmZgogIC0gYWRkIGFuIGFjdHVhbCBjb2RlIGV4YW1wbGUgZm9yIHJlZ2lvbnMgcXVl
cnkKICAtIGJ1bmNoIG9mIG90aGVyIHN0dWZmCiAoSmFzb24pCiAgLSB1QVBJIGNoYW5nZSghKToK
CS0gdHJ5IGEgc2ltcGxlciBkZXNpZ24gd2l0aCB0aGUgcGxhY2VtZW50cyBleHRlbnNpb24KCS0g
cmF0aGVyIHRoYW4gaGF2ZSBhIGdlbmVyaWMgc2V0cGFyYW0gd2hpY2ggY2FuIGNvdmVyIG11bHRp
cGxlCgkgIHVzZSBjYXNlcywgaGF2ZSBlYWNoIGV4dGVuc2lvbiBiZSByZXNwb25zaWJsZSBmb3Ig
b25lIHRoaW5nCgkgIG9ubHkKdjQ6CiAoRGFuaWVsKQogIC0gYWRkIHNvbWUgbW9yZSBub3RlcyBm
b3IgdHRtIGNvbnZlcnNpb24KICAtIGJ1bmNoIG9mIG90aGVyIHN0dWZmCiAoSmFzb24pCiAgLSB1
QVBJIGNoYW5nZSghKToKCS0gZHJvcCBhbGwgdGhlIGV4dHJhIHJzdmQgbWVtYmVycyBmb3IgdGhl
IHJlZ2lvbl9xdWVyeSBhbmQKCSAgcmVnaW9uX2luZm8sIGp1c3Qga2VlcCB0aGUgYmFyZSBtaW5p
bXVtIG5lZWRlZCBmb3IgcGFkZGluZwp2NToKKEphc29uKQogIC0gZm9yIHRoZSB1cHN0cmVhbSBw
bGFuLCBhZGQgYSByZXF1aXJlbWVudCB0aGF0IHdlIHNlbmQgdGhlIHVBUEkgYml0cwogICAgYWdh
aW4gZm9yIGZpbmFsIHNpZ24gb2ZmIGJlZm9yZSB0dXJuaW5nIGl0IG9uIGZvciByZWFsCiAgLSBk
b2N1bWVudCBob3cgd2UgaW50ZW5kIHRvIGV4dGVuZCB0aGUgcnN2ZCBiaXRzIGZvciB0aGUgcmVn
aW9uIHF1ZXJ5CihLZW5uZXRoKQogIC0gaW1wcm92ZSB0aGUgY29tbWVudCBmb3IgdGhlIHNtZW0r
bG1lbSBtbWFwIG1vZGUgYW5kIGNhY2hpbmcKClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0
cm9tQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBsaW51eC5pbnRlbC5jb20+CkNjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29t
ZmllbGRAaW50ZWwuY29tPgpDYzogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwuanVzdGVuQGludGVs
LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogS2Vu
bmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkNjOiBKYXNvbiBFa3N0cmFuZCA8
amFzb25Aamxla3N0cmFuZC5uZXQ+CkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+
CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBtZXNhLWRldkBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+CkFja2VkLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpBY2tlZC1i
eTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+CkFja2VkLWJ5OiBKb24g
Qmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24v
Z3B1L3JmYy9pOTE1X2dlbV9sbWVtLmggICB8IDIzNyArKysrKysrKysrKysrKysrKysrKysrKysK
IERvY3VtZW50YXRpb24vZ3B1L3JmYy9pOTE1X2dlbV9sbWVtLnJzdCB8IDEzMSArKysrKysrKysr
KysrCiBEb2N1bWVudGF0aW9uL2dwdS9yZmMvaW5kZXgucnN0ICAgICAgICAgfCAgIDQgKwogMyBm
aWxlcyBjaGFuZ2VkLCAzNzIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZ3B1L3JmYy9pOTE1X2dlbV9sbWVtLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5oIGIvRG9jdW1lbnRhdGlvbi9ncHUvcmZjL2k5
MTVfZ2VtX2xtZW0uaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjcx
MmE4NWY5MzJlYwotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L3JmYy9pOTE1
X2dlbV9sbWVtLmgKQEAgLTAsMCArMSwyMzcgQEAKKy8qKgorICogZW51bSBkcm1faTkxNV9nZW1f
bWVtb3J5X2NsYXNzIC0gU3VwcG9ydGVkIG1lbW9yeSBjbGFzc2VzCisgKi8KK2VudW0gZHJtX2k5
MTVfZ2VtX21lbW9yeV9jbGFzcyB7CisJLyoqIEBJOTE1X01FTU9SWV9DTEFTU19TWVNURU06IFN5
c3RlbSBtZW1vcnkgKi8KKwlJOTE1X01FTU9SWV9DTEFTU19TWVNURU0gPSAwLAorCS8qKiBASTkx
NV9NRU1PUllfQ0xBU1NfREVWSUNFOiBEZXZpY2UgbG9jYWwtbWVtb3J5ICovCisJSTkxNV9NRU1P
UllfQ0xBU1NfREVWSUNFLAorfTsKKworLyoqCisgKiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9y
eV9jbGFzc19pbnN0YW5jZSAtIElkZW50aWZ5IHBhcnRpY3VsYXIgbWVtb3J5IHJlZ2lvbgorICov
CitzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0YW5jZSB7CisJLyoqIEBtZW1v
cnlfY2xhc3M6IFNlZSBlbnVtIGRybV9pOTE1X2dlbV9tZW1vcnlfY2xhc3MgKi8KKwlfX3UxNiBt
ZW1vcnlfY2xhc3M7CisKKwkvKiogQG1lbW9yeV9pbnN0YW5jZTogV2hpY2ggaW5zdGFuY2UgKi8K
KwlfX3UxNiBtZW1vcnlfaW5zdGFuY2U7Cit9OworCisvKioKKyAqIHN0cnVjdCBkcm1faTkxNV9t
ZW1vcnlfcmVnaW9uX2luZm8gLSBEZXNjcmliZXMgb25lIHJlZ2lvbiBhcyBrbm93biB0byB0aGUK
KyAqIGRyaXZlci4KKyAqCisgKiBOb3RlIHRoYXQgd2UgcmVzZXJ2ZSBzb21lIHN0dWZmIGhlcmUg
Zm9yIHBvdGVudGlhbCBmdXR1cmUgd29yay4gQXMgYW4gZXhhbXBsZQorICogd2UgbWlnaHQgd2Fu
dCBleHBvc2UgdGhlIGNhcGFiaWxpdGllcyBmb3IgYSBnaXZlbiByZWdpb24sIHdoaWNoIGNvdWxk
IGluY2x1ZGUKKyAqIHRoaW5ncyBsaWtlIGlmIHRoZSByZWdpb24gaXMgQ1BVIG1hcHBhYmxlL2Fj
Y2Vzc2libGUsIHdoYXQgYXJlIHRoZSBzdXBwb3J0ZWQKKyAqIG1hcHBpbmcgdHlwZXMgZXRjLgor
ICoKKyAqIE5vdGUgdGhhdCB0byBleHRlbmQgc3RydWN0IGRybV9pOTE1X21lbW9yeV9yZWdpb25f
aW5mbyBhbmQgc3RydWN0CisgKiBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyBpbiB0aGUg
ZnV0dXJlIHRoZSBwbGFuIGlzIHRvIGRvIHRoZSBmb2xsb3dpbmc6CisgKgorICogLi4gY29kZS1i
bG9jazo6IEMKKyAqCisgKglzdHJ1Y3QgZHJtX2k5MTVfbWVtb3J5X3JlZ2lvbl9pbmZvIHsKKyAq
CQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0YW5jZSByZWdpb247CisgKgkJ
dW5pb24geworICoJCQlfX3UzMiByc3ZkMDsKKyAqCQkJX191MzIgbmV3X3RoaW5nMTsKKyAqCQl9
OworICoJCS4uLgorICoJCXVuaW9uIHsKKyAqCQkJX191NjQgcnN2ZDFbOF07CisgKgkJCXN0cnVj
dCB7CisgKgkJCQlfX3U2NCBuZXdfdGhpbmcyOworICoJCQkJX191NjQgbmV3X3RoaW5nMzsKKyAq
CQkJCS4uLgorICoJCQl9OworICoJCX07CisgKgl9OworICoKKyAqIFdpdGggdGhpcyB0aGluZ3Mg
c2hvdWxkIHJlbWFpbiBzb3VyY2UgY29tcGF0aWJsZSBiZXR3ZWVuIHZlcnNpb25zIGZvcgorICog
dXNlcnNwYWNlLCBldmVuIGFzIHdlIGFkZCBuZXcgZmllbGRzLgorICoKKyAqIE5vdGUgdGhpcyBp
cyB1c2luZyBib3RoIHN0cnVjdCBkcm1faTkxNV9xdWVyeV9pdGVtIGFuZCBzdHJ1Y3QgZHJtX2k5
MTVfcXVlcnkuCisgKiBGb3IgdGhpcyBuZXcgcXVlcnkgd2UgYXJlIGFkZGluZyB0aGUgbmV3IHF1
ZXJ5IGlkIERSTV9JOTE1X1FVRVJZX01FTU9SWV9SRUdJT05TCisgKiBhdCAmZHJtX2k5MTVfcXVl
cnlfaXRlbS5xdWVyeV9pZC4KKyAqLworc3RydWN0IGRybV9pOTE1X21lbW9yeV9yZWdpb25faW5m
byB7CisJLyoqIEByZWdpb246IFRoZSBjbGFzczppbnN0YW5jZSBwYWlyIGVuY29kaW5nICovCisJ
c3RydWN0IGRybV9pOTE1X2dlbV9tZW1vcnlfY2xhc3NfaW5zdGFuY2UgcmVnaW9uOworCisJLyoq
IEByc3ZkMDogTUJaICovCisJX191MzIgcnN2ZDA7CisKKwkvKiogQHByb2JlZF9zaXplOiBNZW1v
cnkgcHJvYmVkIGJ5IHRoZSBkcml2ZXIgKC0xID0gdW5rbm93bikgKi8KKwlfX3U2NCBwcm9iZWRf
c2l6ZTsKKworCS8qKiBAdW5hbGxvY2F0ZWRfc2l6ZTogRXN0aW1hdGUgb2YgbWVtb3J5IHJlbWFp
bmluZyAoLTEgPSB1bmtub3duKSAqLworCV9fdTY0IHVuYWxsb2NhdGVkX3NpemU7CisKKwkvKiog
QHJzdmQxOiBNQlogKi8KKyAgICAgICAgX191NjQgcnN2ZDFbOF07Cit9OworCisvKioKKyAqIHN0
cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucworICoKKyAqIFRoZSByZWdpb24gaW5m
byBxdWVyeSBlbnVtZXJhdGVzIGFsbCByZWdpb25zIGtub3duIHRvIHRoZSBkcml2ZXIgYnkgZmls
bGluZworICogaW4gYW4gYXJyYXkgb2Ygc3RydWN0IGRybV9pOTE1X21lbW9yeV9yZWdpb25faW5m
byBzdHJ1Y3R1cmVzLgorICoKKyAqIEV4YW1wbGUgZm9yIGdldHRpbmcgdGhlIGxpc3Qgb2Ygc3Vw
cG9ydGVkIHJlZ2lvbnM6CisgKgorICogLi4gY29kZS1ibG9jazo6IEMKKyAqCisgKglzdHJ1Y3Qg
ZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgKmluZm87CisgKglzdHJ1Y3QgZHJtX2k5MTVf
cXVlcnlfaXRlbSBpdGVtID0geworICoJCS5xdWVyeV9pZCA9IERSTV9JOTE1X1FVRVJZX01FTU9S
WV9SRUdJT05TOworICoJfTsKKyAqCXN0cnVjdCBkcm1faTkxNV9xdWVyeSBxdWVyeSA9IHsKKyAq
CQkubnVtX2l0ZW1zID0gMSwKKyAqCQkuaXRlbXNfcHRyID0gKHVpbnRwdHJfdCkmaXRlbSwKKyAq
CX07CisgKglpbnQgZXJyLCBpOworICoKKyAqCS8vIEZpcnN0IHF1ZXJ5IHRoZSBzaXplIG9mIHRo
ZSBibG9iIHdlIG5lZWQsIHRoaXMgbmVlZHMgdG8gYmUgbGFyZ2UKKyAqCS8vIGVub3VnaCB0byBo
b2xkIG91ciBhcnJheSBvZiByZWdpb25zLiBUaGUga2VybmVsIHdpbGwgZmlsbCBvdXQgdGhlCisg
KgkvLyBpdGVtLmxlbmd0aCBmb3IgdXMsIHdoaWNoIGlzIHRoZSBudW1iZXIgb2YgYnl0ZXMgd2Ug
bmVlZC4KKyAqCWVyciA9IGlvY3RsKGZkLCBEUk1fSU9DVExfSTkxNV9RVUVSWSwgJnF1ZXJ5KTsK
KyAqCWlmIChlcnIpIC4uLgorICoKKyAqCWluZm8gPSBjYWxsb2MoMSwgaXRlbS5sZW5ndGgpOwor
ICoJLy8gTm93IHRoYXQgd2UgYWxsb2NhdGVkIHRoZSByZXF1aXJlZCBudW1iZXIgb2YgYnl0ZXMs
IHdlIGNhbGwgdGhlIGlvY3RsCisgKgkvLyBhZ2FpbiwgdGhpcyB0aW1lIHdpdGggdGhlIGRhdGFf
cHRyIHBvaW50aW5nIHRvIG91ciBuZXdseSBhbGxvY2F0ZWQKKyAqCS8vIGJsb2IsIHdoaWNoIHRo
ZSBrZXJuZWwgY2FuIHRoZW4gcG9wdWxhdGUgd2l0aCB0aGUgYWxsIHRoZSByZWdpb24gaW5mby4K
KyAqCWl0ZW0uZGF0YV9wdHIgPSAodWludHB0cl90KSZpbmZvLAorICoKKyAqCWVyciA9IGlvY3Rs
KGZkLCBEUk1fSU9DVExfSTkxNV9RVUVSWSwgJnF1ZXJ5KTsKKyAqCWlmIChlcnIpIC4uLgorICoK
KyAqCS8vIFdlIGNhbiBub3cgYWNjZXNzIGVhY2ggcmVnaW9uIGluIHRoZSBhcnJheQorICoJZm9y
IChpID0gMDsgaSA8IGluZm8tPm51bV9yZWdpb25zOyBpKyspIHsKKyAqCQlzdHJ1Y3QgZHJtX2k5
MTVfbWVtb3J5X3JlZ2lvbl9pbmZvIG1yID0gaW5mby0+cmVnaW9uc1tpXTsKKyAqCQl1MTYgY2xh
c3MgPSBtci5yZWdpb24uY2xhc3M7CisgKgkJdTE2IGluc3RhbmNlID0gbXIucmVnaW9uLmluc3Rh
bmNlOworICoKKyAqCQkuLi4uCisgKgl9CisgKgorICoJZnJlZShpbmZvKTsKKyAqLworc3RydWN0
IGRybV9pOTE1X3F1ZXJ5X21lbW9yeV9yZWdpb25zIHsKKwkvKiogQG51bV9yZWdpb25zOiBOdW1i
ZXIgb2Ygc3VwcG9ydGVkIHJlZ2lvbnMgKi8KKwlfX3UzMiBudW1fcmVnaW9uczsKKworCS8qKiBA
cnN2ZDogTUJaICovCisgICAgICAgIF9fdTMyIHJzdmRbM107CisKKwkvKiogQHJlZ2lvbnM6IElu
Zm8gYWJvdXQgZWFjaCBzdXBwb3J0ZWQgcmVnaW9uICovCisJc3RydWN0IGRybV9pOTE1X21lbW9y
eV9yZWdpb25faW5mbyByZWdpb25zW107Cit9OworCisjZGVmaW5lIERSTV9JOTE1X0dFTV9DUkVB
VEVfRVhUCQkweGRlYWRiZWFmCisjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9DUkVBVEVfRVhU
CURSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9HRU1fQ1JFQVRFX0VYVCwgc3Ry
dWN0IGRybV9pOTE1X2dlbV9jcmVhdGVfZXh0KQorCisvKioKKyAqIHN0cnVjdCBkcm1faTkxNV9n
ZW1fY3JlYXRlX2V4dCAtIEV4aXN0aW5nIGdlbV9jcmVhdGUgYmVoYXZpb3VyLCB3aXRoIGFkZGVk
CisgKiBleHRlbnNpb24gc3VwcG9ydCB1c2luZyBzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbi4K
KyAqCisgKiBOb3RlIHRoYXQgaW4gdGhlIGZ1dHVyZSB3ZSB3YW50IHRvIGhhdmUgb3VyIGJ1ZmZl
ciBmbGFncyBoZXJlLCBhdCBsZWFzdCBmb3IKKyAqIHRoZSBzdHVmZiB0aGF0IGlzIGltbXV0YWJs
ZS4gUHJldmlvdXNseSB3ZSB3b3VsZCBoYXZlIHR3byBpb2N0bHMsIG9uZSB0bworICogY3JlYXRl
IHRoZSBvYmplY3Qgd2l0aCBnZW1fY3JlYXRlLCBhbmQgYW5vdGhlciB0byBhcHBseSB2YXJpb3Vz
IHBhcmFtZXRlcnMsCisgKiBob3dldmVyIHRoaXMgY3JlYXRlcyBzb21lIGFtYmlndWl0eSBmb3Ig
dGhlIHBhcmFtcyB3aGljaCBhcmUgY29uc2lkZXJlZAorICogaW1tdXRhYmxlLiBBbHNvIGluIGdl
bmVyYWwgd2UncmUgcGhhc2luZyBvdXQgdGhlIHZhcmlvdXMgU0VUL0dFVCBpb2N0bHMuCisgKi8K
K3N0cnVjdCBkcm1faTkxNV9nZW1fY3JlYXRlX2V4dCB7CisJLyoqCisJICogQHNpemU6IFJlcXVl
c3RlZCBzaXplIGZvciB0aGUgb2JqZWN0LgorCSAqCisJICogVGhlIChwYWdlLWFsaWduZWQpIGFs
bG9jYXRlZCBzaXplIGZvciB0aGUgb2JqZWN0IHdpbGwgYmUgcmV0dXJuZWQuCisJICoKKwkgKiBO
b3RlIHRoYXQgZm9yIHNvbWUgZGV2aWNlcyB3ZSBoYXZlIG1pZ2h0IGhhdmUgZnVydGhlciBtaW5p
bXVtCisJICogcGFnZS1zaXplIHJlc3RyaWN0aW9ucyhsYXJnZXIgdGhhbiA0SyksIGxpa2UgZm9y
IGRldmljZSBsb2NhbC1tZW1vcnkuCisJICogSG93ZXZlciBpbiBnZW5lcmFsIHRoZSBmaW5hbCBz
aXplIGhlcmUgc2hvdWxkIGFsd2F5cyByZWZsZWN0IGFueQorCSAqIHJvdW5kaW5nIHVwLCBpZiBm
b3IgZXhhbXBsZSB1c2luZyB0aGUgSTkxNV9HRU1fQ1JFQVRFX0VYVF9NRU1PUllfUkVHSU9OUwor
CSAqIGV4dGVuc2lvbiB0byBwbGFjZSB0aGUgb2JqZWN0IGluIGRldmljZSBsb2NhbC1tZW1vcnku
CisJICovCisJX191NjQgc2l6ZTsKKwkvKioKKwkgKiBAaGFuZGxlOiBSZXR1cm5lZCBoYW5kbGUg
Zm9yIHRoZSBvYmplY3QuCisJICoKKwkgKiBPYmplY3QgaGFuZGxlcyBhcmUgbm9uemVyby4KKwkg
Ki8KKwlfX3UzMiBoYW5kbGU7CisJLyoqIEBmbGFnczogTUJaICovCisJX191MzIgZmxhZ3M7CisJ
LyoqCisJICogQGV4dGVuc2lvbnM6IFRoZSBjaGFpbiBvZiBleHRlbnNpb25zIHRvIGFwcGx5IHRv
IHRoaXMgb2JqZWN0LgorCSAqCisJICogVGhpcyB3aWxsIGJlIHVzZWZ1bCBpbiB0aGUgZnV0dXJl
IHdoZW4gd2UgbmVlZCB0byBzdXBwb3J0IHNldmVyYWwKKwkgKiBkaWZmZXJlbnQgZXh0ZW5zaW9u
cywgYW5kIHdlIG5lZWQgdG8gYXBwbHkgbW9yZSB0aGFuIG9uZSB3aGVuCisJICogY3JlYXRpbmcg
dGhlIG9iamVjdC4gU2VlIHN0cnVjdCBpOTE1X3VzZXJfZXh0ZW5zaW9uLgorCSAqCisJICogSWYg
d2UgZG9uJ3Qgc3VwcGx5IGFueSBleHRlbnNpb25zIHRoZW4gd2UgZ2V0IHRoZSBzYW1lIG9sZCBn
ZW1fY3JlYXRlCisJICogYmVoYXZpb3VyLgorCSAqCisJICogRm9yIEk5MTVfR0VNX0NSRUFURV9F
WFRfTUVNT1JZX1JFR0lPTlMgdXNhZ2Ugc2VlCisJICogc3RydWN0IGRybV9pOTE1X2dlbV9jcmVh
dGVfZXh0X21lbW9yeV9yZWdpb25zLgorCSAqLworI2RlZmluZSBJOTE1X0dFTV9DUkVBVEVfRVhU
X01FTU9SWV9SRUdJT05TIDAKKwlfX3U2NCBleHRlbnNpb25zOworfTsKKworLyoqCisgKiBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2NyZWF0ZV9leHRfbWVtb3J5X3JlZ2lvbnMgLSBUaGUKKyAqIEk5MTVf
R0VNX0NSRUFURV9FWFRfTUVNT1JZX1JFR0lPTlMgZXh0ZW5zaW9uLgorICoKKyAqIFNldCB0aGUg
b2JqZWN0IHdpdGggdGhlIGRlc2lyZWQgc2V0IG9mIHBsYWNlbWVudHMvcmVnaW9ucyBpbiBwcmlv
cml0eQorICogb3JkZXIuIEVhY2ggZW50cnkgbXVzdCBiZSB1bmlxdWUgYW5kIHN1cHBvcnRlZCBi
eSB0aGUgZGV2aWNlLgorICoKKyAqIFRoaXMgaXMgcHJvdmlkZWQgYXMgYW4gYXJyYXkgb2Ygc3Ry
dWN0IGRybV9pOTE1X2dlbV9tZW1vcnlfY2xhc3NfaW5zdGFuY2UsIG9yCisgKiBhbiBlcXVpdmFs
ZW50IGxheW91dCBvZiBjbGFzczppbnN0YW5jZSBwYWlyIGVuY29kaW5ncy4gU2VlIHN0cnVjdAor
ICogZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgYW5kIERSTV9JOTE1X1FVRVJZX01FTU9S
WV9SRUdJT05TIGZvciBob3cgdG8KKyAqIHF1ZXJ5IHRoZSBzdXBwb3J0ZWQgcmVnaW9ucyBmb3Ig
YSBkZXZpY2UuCisgKgorICogQXMgYW4gZXhhbXBsZSwgb24gZGlzY3JldGUgZGV2aWNlcywgaWYg
d2Ugd2lzaCB0byBzZXQgdGhlIHBsYWNlbWVudCBhcworICogZGV2aWNlIGxvY2FsLW1lbW9yeSB3
ZSBjYW4gZG8gc29tZXRoaW5nIGxpa2U6CisgKgorICogLi4gY29kZS1ibG9jazo6IEMKKyAqCisg
KglzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0YW5jZSByZWdpb25fbG1lbSA9
IHsKKyAqICAgICAgICAgICAgICAubWVtb3J5X2NsYXNzID0gSTkxNV9NRU1PUllfQ0xBU1NfREVW
SUNFLAorICogICAgICAgICAgICAgIC5tZW1vcnlfaW5zdGFuY2UgPSAwLAorICogICAgICB9Owor
ICogICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NyZWF0ZV9leHRfbWVtb3J5X3JlZ2lvbnMgcmVn
aW9ucyA9IHsKKyAqICAgICAgICAgICAgICAuYmFzZSA9IHsgLm5hbWUgPSBJOTE1X0dFTV9DUkVB
VEVfRVhUX01FTU9SWV9SRUdJT05TIH0sCisgKiAgICAgICAgICAgICAgLnJlZ2lvbnMgPSAodWlu
dHB0cl90KSZyZWdpb25fbG1lbSwKKyAqICAgICAgICAgICAgICAubnVtX3JlZ2lvbnMgPSAxLAor
ICogICAgICB9OworICogICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NyZWF0ZV9leHQgY3JlYXRl
X2V4dCA9IHsKKyAqICAgICAgICAgICAgICAuc2l6ZSA9IDE2ICogUEFHRV9TSVpFLAorICogICAg
ICAgICAgICAgIC5leHRlbnNpb25zID0gKHVpbnRwdHJfdCkmcmVnaW9ucywKKyAqICAgICAgfTsK
KyAqCisgKiAgICAgIGludCBlcnIgPSBpb2N0bChmZCwgRFJNX0lPQ1RMX0k5MTVfR0VNX0NSRUFU
RV9FWFQsICZjcmVhdGVfZXh0KTsKKyAqICAgICAgaWYgKGVycikgLi4uCisgKgorICogQXQgd2hp
Y2ggcG9pbnQgd2UgZ2V0IHRoZSBvYmplY3QgaGFuZGxlIGluICZkcm1faTkxNV9nZW1fY3JlYXRl
X2V4dC5oYW5kbGUsCisgKiBhbG9uZyB3aXRoIHRoZSBmaW5hbCBvYmplY3Qgc2l6ZSBpbiAmZHJt
X2k5MTVfZ2VtX2NyZWF0ZV9leHQuc2l6ZSwgd2hpY2gKKyAqIHNob3VsZCBhY2NvdW50IGZvciBh
bnkgcm91bmRpbmcgdXAsIGlmIHJlcXVpcmVkLgorICovCitzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2Ny
ZWF0ZV9leHRfbWVtb3J5X3JlZ2lvbnMgeworCS8qKiBAYmFzZTogRXh0ZW5zaW9uIGxpbmsuIFNl
ZSBzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbi4gKi8KKwlzdHJ1Y3QgaTkxNV91c2VyX2V4dGVu
c2lvbiBiYXNlOworCisJLyoqIEBwYWQ6IE1CWiAqLworCV9fdTMyIHBhZDsKKwkvKiogQG51bV9y
ZWdpb25zOiBOdW1iZXIgb2YgZWxlbWVudHMgaW4gdGhlIEByZWdpb25zIGFycmF5LiAqLworCV9f
dTMyIG51bV9yZWdpb25zOworCS8qKgorCSAqIEByZWdpb25zOiBUaGUgcmVnaW9ucy9wbGFjZW1l
bnRzIGFycmF5LgorCSAqCisJICogQW4gYXJyYXkgb2Ygc3RydWN0IGRybV9pOTE1X2dlbV9tZW1v
cnlfY2xhc3NfaW5zdGFuY2UuCisJICovCisJX191NjQgcmVnaW9uczsKK307CmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QgYi9Eb2N1bWVudGF0aW9u
L2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi4xZDM0NGM1OTMwMTgKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9u
L2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QKQEAgLTAsMCArMSwxMzEgQEAKKz09PT09PT09PT09
PT09PT09PT09PT09PT0KK0k5MTUgREcxL0xNRU0gUkZDIFNlY3Rpb24KKz09PT09PT09PT09PT09
PT09PT09PT09PT0KKworVXBzdHJlYW0gcGxhbgorPT09PT09PT09PT09PQorRm9yIHVwc3RyZWFt
IHRoZSBvdmVyYWxsIHBsYW4gZm9yIGxhbmRpbmcgYWxsIHRoZSBERzEgc3R1ZmYgYW5kIHR1cm5p
bmcgaXQgZm9yCityZWFsLCB3aXRoIGFsbCB0aGUgdUFQSSBiaXRzIGlzOgorCisqIE1lcmdlIGJh
c2ljIEhXIGVuYWJsaW5nIG9mIERHMShzdGlsbCB3aXRob3V0IHBjaWlkKQorKiBNZXJnZSB0aGUg
dUFQSSBiaXRzIGJlaGluZCBzcGVjaWFsIENPTkZJR19CUk9LRU4ob3Igc28pIGZsYWcKKyAgICAg
ICAgKiBBdCB0aGlzIHBvaW50IHdlIGNhbiBzdGlsbCBtYWtlIGNoYW5nZXMsIGJ1dCBpbXBvcnRh
bnRseSB0aGlzIGxldHMgdXMKKyAgICAgICAgICBzdGFydCBydW5uaW5nIElHVHMgd2hpY2ggY2Fu
IHV0aWxpemUgbG9jYWwtbWVtb3J5IGluIENJCisqIENvbnZlcnQgb3ZlciB0byBUVE0sIG1ha2Ug
c3VyZSBpdCBhbGwga2VlcHMgd29ya2luZy4gU29tZSBvZiB0aGUgd29yayBpdGVtczoKKyAgICAg
ICAgKiBUVE0gc2hyaW5rZXIgZm9yIGRpc2NyZXRlCisgICAgICAgICogZG1hX3Jlc3ZfbG9ja2l0
ZW0gZm9yIGZ1bGwgZG1hX3Jlc3ZfbG9jaywgaS5lIG5vdCBqdXN0IHRyeWxvY2sKKyAgICAgICAg
KiBVc2UgVFRNIENQVSBwYWdlZmF1bHQgaGFuZGxlcgorICAgICAgICAqIFJvdXRlIHNobWVtIGJh
Y2tlbmQgb3ZlciB0byBUVE0gU1lTVEVNIGZvciBkaXNjcmV0ZQorICAgICAgICAqIFRUTSBwdXJn
ZWFibGUgb2JqZWN0IHN1cHBvcnQKKyAgICAgICAgKiBNb3ZlIGk5MTUgYnVkZHkgYWxsb2NhdG9y
IG92ZXIgdG8gVFRNCisgICAgICAgICogTU1BUCBpb2N0bCBtb2RlKHNlZSBgSTkxNSBNTUFQYF8p
CisgICAgICAgICogU0VUL0dFVCBpb2N0bCBjYWNoaW5nKHNlZSBgSTkxNSBTRVQvR0VUIENBQ0hJ
TkdgXykKKyogU2VuZCBSRkMod2l0aCBtZXNhLWRldiBvbiBjYykgZm9yIGZpbmFsIHNpZ24gb2Zm
IG9uIHRoZSB1QVBJCisqIEFkZCBwY2lpZCBmb3IgREcxIGFuZCB0dXJuIG9uIHVBUEkgZm9yIHJl
YWwKKworTmV3IG9iamVjdCBwbGFjZW1lbnQgYW5kIHJlZ2lvbiBxdWVyeSB1QVBJCis9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KK1N0YXJ0aW5nIGZyb20gREcxIHdl
IG5lZWQgdG8gZ2l2ZSB1c2Vyc3BhY2UgdGhlIGFiaWxpdHkgdG8gYWxsb2NhdGUgYnVmZmVycyBm
cm9tCitkZXZpY2UgbG9jYWwtbWVtb3J5LiBDdXJyZW50bHkgdGhlIGRyaXZlciBzdXBwb3J0cyBn
ZW1fY3JlYXRlLCB3aGljaCBjYW4gcGxhY2UKK2J1ZmZlcnMgaW4gc3lzdGVtIG1lbW9yeSB2aWEg
c2htZW0sIGFuZCB0aGUgdXN1YWwgYXNzb3J0bWVudCBvZiBvdGhlcgoraW50ZXJmYWNlcywgbGlr
ZSBkdW1iIGJ1ZmZlcnMgYW5kIHVzZXJwdHIuCisKK1RvIHN1cHBvcnQgdGhpcyBuZXcgY2FwYWJp
bGl0eSwgd2hpbGUgYWxzbyBwcm92aWRpbmcgYSB1QVBJIHdoaWNoIHdpbGwgd29yaworYmV5b25k
IGp1c3QgREcxLCB3ZSBwcm9wb3NlIHRvIG9mZmVyIHRocmVlIG5ldyBiaXRzIG9mIHVBUEk6CisK
K0RSTV9JOTE1X1FVRVJZX01FTU9SWV9SRUdJT05TCistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQorTmV3IHF1ZXJ5IElEIHdoaWNoIGFsbG93cyB1c2Vyc3BhY2UgdG8gZGlzY292ZXIgdGhl
IGxpc3Qgb2Ygc3VwcG9ydGVkIG1lbW9yeQorcmVnaW9ucyhsaWtlIHN5c3RlbS1tZW1vcnkgYW5k
IGxvY2FsLW1lbW9yeSkgZm9yIGEgZ2l2ZW4gZGV2aWNlLiBXZSBpZGVudGlmeQorZWFjaCByZWdp
b24gd2l0aCBhIGNsYXNzIGFuZCBpbnN0YW5jZSBwYWlyLCB3aGljaCBzaG91bGQgYmUgdW5pcXVl
LiBUaGUgY2xhc3MKK2hlcmUgd291bGQgYmUgREVWSUNFIG9yIFNZU1RFTSwgYW5kIHRoZSBpbnN0
YW5jZSB3b3VsZCBiZSB6ZXJvLCBvbiBwbGF0Zm9ybXMKK2xpa2UgREcxLgorCitTaWRlIG5vdGU6
IFRoZSBjbGFzcy9pbnN0YW5jZSBkZXNpZ24gaXMgYm9ycm93ZWQgZnJvbSBvdXIgZXhpc3Rpbmcg
ZW5naW5lIHVBUEksCit3aGVyZSB3ZSBkZXNjcmliZSBldmVyeSBwaHlzaWNhbCBlbmdpbmUgaW4g
dGVybXMgb2YgaXRzIGNsYXNzLCBhbmQgdGhlCitwYXJ0aWN1bGFyIGluc3RhbmNlLCBzaW5jZSB3
ZSBjYW4gaGF2ZSBtb3JlIHRoYW4gb25lIHBlciBjbGFzcy4KKworSW4gdGhlIGZ1dHVyZSB3ZSBh
bHNvIHdhbnQgdG8gZXhwb3NlIG1vcmUgaW5mb3JtYXRpb24gd2hpY2ggY2FuIGZ1cnRoZXIKK2Rl
c2NyaWJlIHRoZSBjYXBhYmlsaXRpZXMgb2YgYSByZWdpb24uCisKKy4uIGtlcm5lbC1kb2M6OiBE
b2N1bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5oCisgICAgICAgIDpmdW5jdGlvbnM6
IGRybV9pOTE1X2dlbV9tZW1vcnlfY2xhc3MgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0
YW5jZSBkcm1faTkxNV9tZW1vcnlfcmVnaW9uX2luZm8gZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3Jl
Z2lvbnMKKworR0VNX0NSRUFURV9FWFQKKy0tLS0tLS0tLS0tLS0tCitOZXcgaW9jdGwgd2hpY2gg
aXMgYmFzaWNhbGx5IGp1c3QgZ2VtX2NyZWF0ZSBidXQgbm93IGFsbG93cyB1c2Vyc3BhY2UgdG8g
cHJvdmlkZQorYSBjaGFpbiBvZiBwb3NzaWJsZSBleHRlbnNpb25zLiBOb3RlIHRoYXQgaWYgd2Ug
ZG9uJ3QgcHJvdmlkZSBhbnkgZXh0ZW5zaW9ucyBhbmQKK3NldCBmbGFncz0wIHRoZW4gd2UgZ2V0
IHRoZSBleGFjdCBzYW1lIGJlaGF2aW91ciBhcyBnZW1fY3JlYXRlLgorCitTaWRlIG5vdGU6IFdl
IGFsc28gbmVlZCB0byBzdXBwb3J0IFBYUFsxXSBpbiB0aGUgbmVhciBmdXR1cmUsIHdoaWNoIGlz
IGFsc28KK2FwcGxpY2FibGUgdG8gaW50ZWdyYXRlZCBwbGF0Zm9ybXMsIGFuZCBhZGRzIGl0cyBv
d24gZ2VtX2NyZWF0ZV9leHQgZXh0ZW5zaW9uLAord2hpY2ggYmFzaWNhbGx5IGxldHMgdXNlcnNw
YWNlIG1hcmsgYSBidWZmZXIgYXMgInByb3RlY3RlZCIuCisKKy4uIGtlcm5lbC1kb2M6OiBEb2N1
bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5oCisgICAgICAgIDpmdW5jdGlvbnM6IGRy
bV9pOTE1X2dlbV9jcmVhdGVfZXh0CisKK0k5MTVfR0VNX0NSRUFURV9FWFRfTUVNT1JZX1JFR0lP
TlMKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KK0ltcGxlbWVudGVkIGFzIGFu
IGV4dGVuc2lvbiBmb3IgZ2VtX2NyZWF0ZV9leHQsIHdlIHdvdWxkIG5vdyBhbGxvdyB1c2Vyc3Bh
Y2UgdG8KK29wdGlvbmFsbHkgcHJvdmlkZSBhbiBpbW11dGFibGUgbGlzdCBvZiBwcmVmZXJyZWQg
cGxhY2VtZW50cyBhdCBjcmVhdGlvbiB0aW1lLAoraW4gcHJpb3JpdHkgb3JkZXIsIGZvciBhIGdp
dmVuIGJ1ZmZlciBvYmplY3QuICBGb3IgdGhlIHBsYWNlbWVudHMgd2UgZXhwZWN0Cit0aGVtIGVh
Y2ggdG8gdXNlIHRoZSBjbGFzcy9pbnN0YW5jZSBlbmNvZGluZywgYXMgcGVyIHRoZSBvdXRwdXQg
b2YgdGhlIHJlZ2lvbnMKK3F1ZXJ5LiBIYXZpbmcgdGhlIGxpc3QgaW4gcHJpb3JpdHkgb3JkZXIg
d2lsbCBiZSB1c2VmdWwgaW4gdGhlIGZ1dHVyZSB3aGVuCitwbGFjaW5nIGFuIG9iamVjdCwgc2F5
IGR1cmluZyBldmljdGlvbi4KKworLi4ga2VybmVsLWRvYzo6IERvY3VtZW50YXRpb24vZ3B1L3Jm
Yy9pOTE1X2dlbV9sbWVtLmgKKyAgICAgICAgOmZ1bmN0aW9uczogZHJtX2k5MTVfZ2VtX2NyZWF0
ZV9leHRfbWVtb3J5X3JlZ2lvbnMKKworT25lIGZhaXIgY3JpdGljaXNtIGhlcmUgaXMgdGhhdCB0
aGlzIHNlZW1zIGEgbGl0dGxlIG92ZXItZW5naW5lZXJlZFsyXS4gSWYgd2UKK2p1c3QgY29uc2lk
ZXIgREcxIHRoZW4geWVzLCBhIHNpbXBsZSBnZW1fY3JlYXRlLmZsYWdzIG9yIHNvbWV0aGluZyBp
cyB0b3RhbGx5CithbGwgdGhhdCdzIG5lZWRlZCB0byB0ZWxsIHRoZSBrZXJuZWwgdG8gYWxsb2Nh
dGUgdGhlIGJ1ZmZlciBpbiBsb2NhbC1tZW1vcnkgb3IKK3doYXRldmVyLiBIb3dldmVyIGxvb2tp
bmcgdG8gdGhlIGZ1dHVyZSB3ZSBuZWVkIHVBUEkgd2hpY2ggY2FuIGFsc28gc3VwcG9ydAordXBj
b21pbmcgWGUgSFAgbXVsdGktdGlsZSBhcmNoaXRlY3R1cmUgaW4gYSBzYW5lIHdheSwgd2hlcmUg
dGhlcmUgY2FuIGJlCittdWx0aXBsZSBsb2NhbC1tZW1vcnkgaW5zdGFuY2VzIGZvciBhIGdpdmVu
IGRldmljZSwgYW5kIHNvIHVzaW5nIGJvdGggY2xhc3MgYW5kCitpbnN0YW5jZSBpbiBvdXIgdUFQ
SSB0byBkZXNjcmliZSByZWdpb25zIGlzIGRlc2lyYWJsZSwgYWx0aG91Z2ggc3BlY2lmaWNhbGx5
Citmb3IgREcxIGl0J3MgdW5pbnRlcmVzdGluZywgc2luY2Ugd2Ugb25seSBoYXZlIGEgc2luZ2xl
IGxvY2FsLW1lbW9yeSBpbnN0YW5jZS4KKworRXhpc3RpbmcgdUFQSSBpc3N1ZXMKKz09PT09PT09
PT09PT09PT09PT09CitTb21lIHBvdGVudGlhbCBpc3N1ZXMgd2Ugc3RpbGwgbmVlZCB0byByZXNv
bHZlLgorCitJOTE1IE1NQVAKKy0tLS0tLS0tLQorSW4gaTkxNSB0aGVyZSBhcmUgbXVsdGlwbGUg
d2F5cyB0byBNTUFQIEdFTSBvYmplY3QsIGluY2x1ZGluZyBtYXBwaW5nIHRoZSBzYW1lCitvYmpl
Y3QgdXNpbmcgZGlmZmVyZW50IG1hcHBpbmcgdHlwZXMoV0MgdnMgV0IpLCBpLmUgbXVsdGlwbGUg
YWN0aXZlIG1tYXBzIHBlcgorb2JqZWN0LiBUVE0gZXhwZWN0cyBvbmUgTU1BUCBhdCBtb3N0IGZv
ciB0aGUgbGlmZXRpbWUgb2YgdGhlIG9iamVjdC4gSWYgaXQKK3R1cm5zIG91dCB0aGF0IHdlIGhh
dmUgdG8gYmFja3BlZGFsIGhlcmUsIHRoZXJlIG1pZ2h0IGJlIHNvbWUgcG90ZW50aWFsCit1c2Vy
c3BhY2UgZmFsbG91dC4KKworSTkxNSBTRVQvR0VUIENBQ0hJTkcKKy0tLS0tLS0tLS0tLS0tLS0t
LS0tCitJbiBpOTE1IHdlIGhhdmUgc2V0L2dldF9jYWNoaW5nIGlvY3RsLiBUVE0gZG9lc24ndCBs
ZXQgdXMgdG8gY2hhbmdlIHRoaXMsIGJ1dAorREcxIGRvZXNuJ3Qgc3VwcG9ydCBub24tc25vb3Bl
ZCBwY2llIHRyYW5zYWN0aW9ucywgc28gd2UgY2FuIGp1c3QgYWx3YXlzCithbGxvY2F0ZSBhcyBX
QiBmb3Igc21lbS1vbmx5IGJ1ZmZlcnMuICBJZi93aGVuIG91ciBodyBnYWlucyBzdXBwb3J0IGZv
cgorbm9uLXNub29wZWQgcGNpZSB0cmFuc2FjdGlvbnMgdGhlbiB3ZSBtdXN0IGZpeCB0aGlzIG1v
ZGUgYXQgYWxsb2NhdGlvbiB0aW1lIGFzCithIG5ldyBHRU0gZXh0ZW5zaW9uLgorCitUaGlzIGlz
IHJlbGF0ZWQgdG8gdGhlIG1tYXAgcHJvYmxlbSwgYmVjYXVzZSBpbiBnZW5lcmFsIChtZWFuaW5n
LCB3aGVuIHdlJ3JlCitub3QgcnVubmluZyBvbiBpbnRlbCBjcHVzKSB0aGUgY3B1IG1tYXAgbXVz
dCBub3QsIGV2ZXIsIGJlIGluY29uc2lzdGVudCB3aXRoCithbGxvY2F0aW9uIG1vZGUuCisKK1Bv
c3NpYmxlIGlkZWEgaXMgdG8gbGV0IHRoZSBrZXJuZWwgcGlja3MgdGhlIG1tYXAgbW9kZSBmb3Ig
dXNlcnNwYWNlIGZyb20gdGhlCitmb2xsb3dpbmcgdGFibGU6CisKK3NtZW0tb25seTogV0IuIFVz
ZXJzcGFjZSBkb2VzIG5vdCBuZWVkIHRvIGNhbGwgY2xmbHVzaC4KKworc21lbStsbWVtOiBXZSBv
bmx5IGV2ZXIgYWxsb3cgYSBzaW5nbGUgbW9kZSwgc28gc2ltcGx5IGFsbG9jYXRlIHRoaXMgYXMg
dW5jYWNoZWQKK21lbW9yeSwgYW5kIGFsd2F5cyBnaXZlIHVzZXJzcGFjZSBhIFdDIG1hcHBpbmcu
IEdQVSBzdGlsbCBkb2VzIHNub29wZWQgYWNjZXNzCitoZXJlKGFzc3VtaW5nIHdlIGNhbid0IHR1
cm4gaXQgb2ZmIGxpa2Ugb24gREcxKSwgd2hpY2ggaXMgYSBiaXQgaW5lZmZpY2llbnQuCisKK2xt
ZW0gb25seTogYWx3YXlzIFdDCisKK1RoaXMgbWVhbnMgb24gZGlzY3JldGUgeW91IG9ubHkgZ2V0
IGEgc2luZ2xlIG1tYXAgbW9kZSwgYWxsIG90aGVycyBtdXN0IGJlCityZWplY3RlZC4gVGhhdCdz
IHByb2JhYmx5IGdvaW5nIHRvIGJlIGEgbmV3IGRlZmF1bHQgbW9kZSBvciBzb21ldGhpbmcgbGlr
ZQordGhhdC4KKworTGlua3MKKz09PT09CitbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy84Njc5OC8KKworWzJdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9tZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0cy81NTk5I25vdGVfNTUzNzkxCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2dwdS9yZmMvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvcmZj
L2luZGV4LnJzdAppbmRleCBhODYyMWY3ZGFiOGIuLjA1NjcwNDQyY2ExYiAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9ncHUvcmZjL2luZGV4LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9y
ZmMvaW5kZXgucnN0CkBAIC0xNSwzICsxNSw3IEBAIGhvc3Qgc3VjaCBkb2N1bWVudGF0aW9uOgog
CiAqIE9uY2UgdGhlIGNvZGUgaGFzIGxhbmRlZCBtb3ZlIGFsbCB0aGUgZG9jdW1lbnRhdGlvbiB0
byB0aGUgcmlnaHQgcGxhY2VzIGluCiAgIHRoZSBtYWluIGNvcmUsIGhlbHBlciBvciBkcml2ZXIg
c2VjdGlvbnMuCisKKy4uIHRvY3RyZWU6OgorCisgICAgaTkxNV9nZW1fbG1lbS5yc3QKLS0gCjIu
MjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
