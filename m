Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E40220DEE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADE06EB59;
	Wed, 15 Jul 2020 13:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E476E0D1;
 Wed, 15 Jul 2020 13:19:53 +0000 (UTC)
IronPort-SDR: ZBSOOGE+tNBAeDBIslO7dYMv0KjZHt0aOYk5lC2PiOMyDMXq9LL83st/kDSQ0jAeAek/oRW954
 gjfLhImu795g==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="167260350"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="167260350"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:19:53 -0700
IronPort-SDR: qREAZOVZUtQ5/eSy4+IzlxTvF4tLbTXeDJ+ulNWQQ1XL9qENnkLRNDXqfx1neWtEQy51M9COWU
 iOYf9dj8MMqA==
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="460083784"
Received: from iferdane-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.55.197])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:19:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 15 Jul 2020 16:19:44 +0300
Message-ID: <87a70029vz.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] drm-intel-next
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
Cc: , dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhdmUgJiBEYW5pZWwgLQoKVGhlIDJuZCBhbmQgcHJlc3VtYWJseSB0aGUgbGFzdCBpOTE1
IGZlYXR1cmUgcHVsbCBmb3IgdjUuOS4KCmRybS1pbnRlbC1uZXh0LTIwMjAtMDctMTU6CmRybS9p
OTE1IGZlYXR1cmVzIGZvciB2NS45LCBiYXRjaCAjMgoKSGlnaGxpZ2h0czoKLSBWZXJ5IGVhcmx5
IERHMSBlbmFibGluZyAoQWJkaWVsLCBMdWNhcywgQW51c2hhKQoKR2VtL0dUOgotIEZpeCBzcGlu
bG9jayByZWN1cnNpb24gb24gc2lnbmFsaW5nIGEgc2lnbmFsZWQgcmVxdWVzdCAoQ2hyaXMpCi0g
UGVyZjogVXNlIEdUVCB3aGVuIHNhdmluZy9yZXN0b3JpbmcgZW5naW5lIEdQUiAoVW1lc2ggTmVy
bGlnZSBSYW1hcHBhKQoKLSBTU0VVIHJlZmFjdG9yaW5nLCBkZWJ1Z2ZzIG1vdmUgdW5kZXIgZ3Qv
IChEYW5pZWxlLCBWZW5rYXRhIFNhbmRlZXAgRGhhbmFsYWtvdGEpCi0gVmFyaW91cyBHVCByZWZh
Y3RvcmluZyBhbmQgY2xlYW51cCwgcHJlcGFyYXRpb24gZm9yIGZ1dHVyZSBjaGFuZ2VzIChEYW5p
ZWxlKQotIEFkanVzdCBIdUMgc3RhdGUgYWNjb3JkaW5nbHkgYWZ0ZXIgR3VDIGZldGNoIGVycm9y
IChNaWNoYcWCIFdpbmlhcnNraSkKLSBVQyBkZWJ1Z2ZzIHVwZGF0ZXMgKE1pY2hhxYIgV2luaWFy
c2tpKQotIE9ubHkgcmV2b2tlIHRoZSBHR1RUIG1tYXBwaW5ncyBvbiBhcGVydHVyZSBkZXRpbGlu
ZyBjaGFuZ2VzIChDaHJpcykKLSBPbmx5IHJldm9rZSBtbWFwIGhhbmRsZXJzIGlmIGFjdGl2ZSAo
Q2hyaXMpCi0gU3BsaXQgdGhlIGNvbnRleHQncyBvYmo6dm1hIGx1dCBpbnRvIGl0cyBvd24gbXV0
ZXggKENocmlzKQotIFZhcmlvdXMgbWVtb3J5LCBtbWFwIGFuZCBwZXJmb3JtYW5jZSBvcHRpbWlz
YXRpb25zIChDaHJpcykKLSBJbXByb3ZlIHN5c3RlbSBzdGFiaWxpdHkgaW4gY2FzZSBvZiBmYWxz
ZSBDUyBldmVudHMgKENocmlzKQotIFZhcmlvdXMgcmVmYWN0b3JpbmdzIGFuZCBjbGVhbnVwIChD
aHJpcykKLSBBbHdheXMgcmVzZXQgdGhlIGVuZ2luZSBvbiBleGVjbGlzdCBmYWlsdXJlcyAoQ2hy
aXMpCi0gVHJhY2UgcGxhY2VtZW50IG9mIHRpbWVsaW5lIEhXU1AgKENocmlzKQotIFVwZGF0ZSBk
bWEtYXR0cmlidXRlcyBmb3Igb3VyIHNnIERNQSAoQ2hyaXMpCgpEaXNwbGF5OgotIFRHTCBDRENM
SyB3b3JrYXJvdW5kIHR3ZWFrcyB0byB1bmJyZWFrIDhLIGRpc3BsYXkgc3VwcG9ydCAoU3Rhbmlz
bGF2KQotIEEgbnVtYmVyIG9mIEZCQyBmaXhlcywgYWxvbmcgd2l0aCBpODY1IEZCQyBlbmFibGlu
ZyAoVmlsbGUpCi0gVmFsaWRhdGUgTVNUIG1vZGVzIGFnYWluc3QgUEJOIGxpbWl0cyAoTHl1ZGUs
IFNoYXduIExlZSkKLSBEbyBub3QgYWNjZXNzIG5vbi1leGlzdGluZyBzd2l6emxlIHJlZ2lzdGVy
cyAoTHVjYXMpCi0gUmV2ZXJ0IEdFTjExKyBIQlIzIHJhdGUgZml4IHRoYXQgY2F1c2VkIGlzc3Vl
cyBvbiBUR0wgKE1hdHQgQXR3b29kKQotIFVwZGF0ZSBUR0wrIGNvbWJvIHBoeSBpbml0aWFsaXph
dGlvbiB0byBtYXRjaCBzcGVjIHVwZGF0ZSAoSm9zw6kpCi0gRml4IEhEQ1AgQ29udGVudCBQcm90
ZWN0aW9uIHByb3BlcnR5IHN0YXRlIG1hY2hpbmUgKEFuc2h1bWFuKQotIEZpeCBIRENQIHJldm9r
ZWQga2V5cyBoYW5kbGluZyAoUmFtKQotIEltcHJvdmUgRERJIEJVRiBzdGF0dXMgY2hlY2tzIGFu
ZCB3YWl0cyAoTWFuYXNpKQotIFZhcmlvdXMgU0RWTytIRE1JK0RWSSBmaXhlcyBhcm91bmQgY29s
b3JpbWV0cnksIGNsb2NraW5nLCBwaXhlbCByZXBlYXQgZXRjLiAoVmlsbGUpCi0gRFAgdm9sdGFn
ZSBzd2luZyBmdW5jdGlvbiByZWZhY3RvcmluZyAoSm9zw6kpCi0gV0FSTiBpZiBtYXggdnN3aW5n
L3ByZS1lbXBoYXNpcyB2aW9sYXRlcyB0aGUgRFAgc3BlYyAoVmlsbGUpCgpPdGhlcjoKLSBBZGQg
bmV3IEVITCBQQ0kgSURzIChKb3PDqSkKLSBVbmlmeSBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
IHZhcmlhYmxlIG5hbWluZyAoTHVjYXMpCi0gVmFyaW91cyB0YWludCB1cGRhdGVzIHRvIGFpZCBk
ZWJ1Z2dpbmcgYW5kIGltcHJvdmUgQ0kgKE1pY2hhxYIgV2luaWFyc2tpKQotIFN0cmFnZ2xlciBj
b252ZXJzaW9ucyB0byBuZXcgbW1pbyByZWdpc3RlciBhY2Nlc3NvcnMgKERhbmllbGUpCgpCUiwK
SmFuaS4KClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgZDUyNGI4N2Y3NzM2NGRi
MDk2ODU1ZDdlYjcxNGZmYWNlYzk3NGRkZjoKCiAgZHJtL2k5MTU6IFVwZGF0ZSBEUklWRVJfREFU
RSB0byAyMDIwMDcwMiAoMjAyMC0wNy0wMiAyMToyNToyOCArMDMwMCkKCmFyZSBhdmFpbGFibGUg
aW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9kcm0vZHJtLWludGVsIHRhZ3MvZHJtLWludGVsLW5leHQtMjAyMC0wNy0xNQoKZm9yIHlvdSB0
byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGU1N2JkMDVlYzBkMmQ4MmQ2MzcyNWRlZGY5ZjVhMDYzZjg3
OWRlMjU6CgogIGRybS9pOTE1OiBVcGRhdGUgRFJJVkVSX0RBVEUgdG8gMjAyMDA3MTUgKDIwMjAt
MDctMTUgMTQ6MTg6MDIgKzAzMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRybS9pOTE1IGZlYXR1cmVzIGZvciB2NS45
LCBiYXRjaCAjMgoKSGlnaGxpZ2h0czoKLSBWZXJ5IGVhcmx5IERHMSBlbmFibGluZyAoQWJkaWVs
LCBMdWNhcywgQW51c2hhKQoKR2VtL0dUOgotIEZpeCBzcGlubG9jayByZWN1cnNpb24gb24gc2ln
bmFsaW5nIGEgc2lnbmFsZWQgcmVxdWVzdCAoQ2hyaXMpCi0gUGVyZjogVXNlIEdUVCB3aGVuIHNh
dmluZy9yZXN0b3JpbmcgZW5naW5lIEdQUiAoVW1lc2ggTmVybGlnZSBSYW1hcHBhKQoKLSBTU0VV
IHJlZmFjdG9yaW5nLCBkZWJ1Z2ZzIG1vdmUgdW5kZXIgZ3QvIChEYW5pZWxlLCBWZW5rYXRhIFNh
bmRlZXAgRGhhbmFsYWtvdGEpCi0gVmFyaW91cyBHVCByZWZhY3RvcmluZyBhbmQgY2xlYW51cCwg
cHJlcGFyYXRpb24gZm9yIGZ1dHVyZSBjaGFuZ2VzIChEYW5pZWxlKQotIEFkanVzdCBIdUMgc3Rh
dGUgYWNjb3JkaW5nbHkgYWZ0ZXIgR3VDIGZldGNoIGVycm9yIChNaWNoYcWCIFdpbmlhcnNraSkK
LSBVQyBkZWJ1Z2ZzIHVwZGF0ZXMgKE1pY2hhxYIgV2luaWFyc2tpKQotIE9ubHkgcmV2b2tlIHRo
ZSBHR1RUIG1tYXBwaW5ncyBvbiBhcGVydHVyZSBkZXRpbGluZyBjaGFuZ2VzIChDaHJpcykKLSBP
bmx5IHJldm9rZSBtbWFwIGhhbmRsZXJzIGlmIGFjdGl2ZSAoQ2hyaXMpCi0gU3BsaXQgdGhlIGNv
bnRleHQncyBvYmo6dm1hIGx1dCBpbnRvIGl0cyBvd24gbXV0ZXggKENocmlzKQotIFZhcmlvdXMg
bWVtb3J5LCBtbWFwIGFuZCBwZXJmb3JtYW5jZSBvcHRpbWlzYXRpb25zIChDaHJpcykKLSBJbXBy
b3ZlIHN5c3RlbSBzdGFiaWxpdHkgaW4gY2FzZSBvZiBmYWxzZSBDUyBldmVudHMgKENocmlzKQot
IFZhcmlvdXMgcmVmYWN0b3JpbmdzIGFuZCBjbGVhbnVwIChDaHJpcykKLSBBbHdheXMgcmVzZXQg
dGhlIGVuZ2luZSBvbiBleGVjbGlzdCBmYWlsdXJlcyAoQ2hyaXMpCi0gVHJhY2UgcGxhY2VtZW50
IG9mIHRpbWVsaW5lIEhXU1AgKENocmlzKQotIFVwZGF0ZSBkbWEtYXR0cmlidXRlcyBmb3Igb3Vy
IHNnIERNQSAoQ2hyaXMpCgpEaXNwbGF5OgotIFRHTCBDRENMSyB3b3JrYXJvdW5kIHR3ZWFrcyB0
byB1bmJyZWFrIDhLIGRpc3BsYXkgc3VwcG9ydCAoU3RhbmlzbGF2KQotIEEgbnVtYmVyIG9mIEZC
QyBmaXhlcywgYWxvbmcgd2l0aCBpODY1IEZCQyBlbmFibGluZyAoVmlsbGUpCi0gVmFsaWRhdGUg
TVNUIG1vZGVzIGFnYWluc3QgUEJOIGxpbWl0cyAoTHl1ZGUsIFNoYXduIExlZSkKLSBEbyBub3Qg
YWNjZXNzIG5vbi1leGlzdGluZyBzd2l6emxlIHJlZ2lzdGVycyAoTHVjYXMpCi0gUmV2ZXJ0IEdF
TjExKyBIQlIzIHJhdGUgZml4IHRoYXQgY2F1c2VkIGlzc3VlcyBvbiBUR0wgKE1hdHQgQXR3b29k
KQotIFVwZGF0ZSBUR0wrIGNvbWJvIHBoeSBpbml0aWFsaXphdGlvbiB0byBtYXRjaCBzcGVjIHVw
ZGF0ZSAoSm9zw6kpCi0gRml4IEhEQ1AgQ29udGVudCBQcm90ZWN0aW9uIHByb3BlcnR5IHN0YXRl
IG1hY2hpbmUgKEFuc2h1bWFuKQotIEZpeCBIRENQIHJldm9rZWQga2V5cyBoYW5kbGluZyAoUmFt
KQotIEltcHJvdmUgRERJIEJVRiBzdGF0dXMgY2hlY2tzIGFuZCB3YWl0cyAoTWFuYXNpKQotIFZh
cmlvdXMgU0RWTytIRE1JK0RWSSBmaXhlcyBhcm91bmQgY29sb3JpbWV0cnksIGNsb2NraW5nLCBw
aXhlbCByZXBlYXQgZXRjLiAoVmlsbGUpCi0gRFAgdm9sdGFnZSBzd2luZyBmdW5jdGlvbiByZWZh
Y3RvcmluZyAoSm9zw6kpCi0gV0FSTiBpZiBtYXggdnN3aW5nL3ByZS1lbXBoYXNpcyB2aW9sYXRl
cyB0aGUgRFAgc3BlYyAoVmlsbGUpCgpPdGhlcjoKLSBBZGQgbmV3IEVITCBQQ0kgSURzIChKb3PD
qSkKLSBVbmlmeSBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0IHZhcmlhYmxlIG5hbWluZyAoTHVj
YXMpCi0gVmFyaW91cyB0YWludCB1cGRhdGVzIHRvIGFpZCBkZWJ1Z2dpbmcgYW5kIGltcHJvdmUg
Q0kgKE1pY2hhxYIgV2luaWFyc2tpKQotIFN0cmFnZ2xlciBjb252ZXJzaW9ucyB0byBuZXcgbW1p
byByZWdpc3RlciBhY2Nlc3NvcnMgKERhbmllbGUpCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFiZGllbCBKYW51bGd1ZSAo
Mik6CiAgICAgIGRybS9pOTE1L2RnMTogYWRkIGluaXRpYWwgREctMSBkZWZpbml0aW9ucwogICAg
ICBkcm0vaTkxNS9kZzE6IEFkZCBERzEgUENJIElEcwoKQW5zaHVtYW4gR3VwdGEgKDEpOgogICAg
ICBkcm0vaTkxNS9oZGNwOiBVcGRhdGUgQ1AgYXMgcGVyIHRoZSBrZXJuZWwgaW50ZXJuYWwgc3Rh
dGUKCkFudXNoYSBTcml2YXRzYSAoMSk6CiAgICAgIGRybS9pOTE1L2RnMTogUmVtb3ZlIFNIUERf
RklMVEVSX0NOVCByZWdpc3RlciBwcm9ncmFtbWluZwoKQ2hyaXMgV2lsc29uICgyMik6CiAgICAg
IGRybS9pOTE1L2dlbTogT25seSByZXZva2UgdGhlIEdHVFQgbW1hcHBpbmdzIG9uIGFwZXJ0dXJl
IGRldGlsaW5nIGNoYW5nZXMKICAgICAgZHJtL2k5MTUvZ2VtOiBPbmx5IHJldm9rZSBtbWFwIGhh
bmRsZXJzIGlmIGFjdGl2ZQogICAgICBkcm0vaTkxNS9nZW06IERyb3AgZm9yY2VkIHN0cnVjdF9t
dXRleCBmcm9tIHNocmlua2VyX3RhaW50c19tdXRleAogICAgICBkcm0vaTkxNTogQWxzbyBkcm9w
IHZtLnJlZiBhbG9uZyBlcnJvciBwYXRocyBmb3Igdm1hIGNvbnN0cnVjdGlvbgogICAgICBkcm0v
aTkxNS9nZW06IFNwbGl0IHRoZSBjb250ZXh0J3Mgb2JqOnZtYSBsdXQgaW50byBpdHMgb3duIG11
dGV4CiAgICAgIGRybS9pOTE1OiBFeHBvcnQgcHBndHRfYmluZF92bWEKICAgICAgZHJtL2k5MTUv
Z3Q6IFBpbiB0aGUgcmluZ3MgYmVmb3JlIG1hcmtpbmcgYWN0aXZlCiAgICAgIGRybS9pOTE1OiBV
cGRhdGUgZG1hLWF0dHJpYnV0ZXMgZm9yIG91ciBzZyBETUEKICAgICAgZHJtL2k5MTUvZ2VtOiBV
bnBpbiBpZGxlIGNvbnRleHRzIGZyb20ga3N3YXBkIHJlY2xhaW0KICAgICAgZHJtL2k5MTUvZ3Q6
IFJlcGxhY2Ugb3BlbmNvZGVkIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKCkKICAgICAgZHJtL2k5
MTU6IFJlbGVhc2Ugc2hvcnRsaXZlZCBtYXBzIG9mIGxvbmdsaXZlZCBvYmplY3RzCiAgICAgIGRy
bS9pOTE1OiBSZW1vdmUgaTkxNV9nZW1fb2JqZWN0X2dldF9kaXJ0eV9wYWdlKCkKICAgICAgZHJt
L2k5MTUvZ3Q6IE9wdGltaXNlIGFsaWFzaW5nLXBwZ3R0IGFsbG9jYXRpb25zCiAgICAgIGRybS9p
OTE1L3NlbGZ0ZXN0OiBDaGVjayB0aGF0IEdQUiBhcmUgcmVzdG9yZWQgYWNyb3NzIG5vYV93YWl0
CiAgICAgIGRybS9pOTE1L2d0OiBCZSBkZWZlbnNpdmUgaW4gdGhlIGZhY2Ugb2YgZmFsc2UgQ1Mg
ZXZlbnRzCiAgICAgIGRybS9pOTE1OiBQdWxsIHByaW50aW5nIEdUIGNhcGFiaWxpdGllcyBvbiBl
cnJvciB0byBlcnJfcHJpbnRfZ3QKICAgICAgZHJtL2k5MTUvZ3Q6IEFsd2F5cyByZXNldCB0aGUg
ZW5naW5lLCBldmVuIGlmIGluYWN0aXZlLCBvbiBleGVjbGlzdHMgZmFpbHVyZQogICAgICBkcm0v
aTkxNS9ndDogSWdub3JlIGlycSBlbmFibGluZyBvbiB0aGUgdmlydHVhbCBlbmdpbmVzCiAgICAg
IGRybS9pOTE1L2d0OiBPbmx5IHN3YXAgdG8gYSByYW5kb20gc2libGluZyBvbmNlIHVwb24gY3Jl
YXRpb24KICAgICAgZHJtL2k5MTU6IFNraXAgc2lnbmFsaW5nIGEgc2lnbmFsZWQgcmVxdWVzdAog
ICAgICBkcm0vaTkxNS9ndDogVHJhY2UgcGxhY2VtZW50IG9mIHRpbWVsaW5lIEhXU1AKICAgICAg
ZHJtL2k5MTUvZ3Q6IEFzc2VydCB0aGUga2VybmVsIGNvbnRleHQgaXMgdXNpbmcgdGhlIEhXU1AK
CkNvbGluIElhbiBLaW5nICgxKToKICAgICAgZHJtL2k5MTUvc2VsZnRlc3Q6IGZpeCBhbiBlcnJv
ciByZXR1cm4gcGF0aCB3aGVyZSBlcnIgaXMgbm90IGJlaW5nIHNldAoKRGFuIENhcnBlbnRlciAo
MSk6CiAgICAgIGRybS9pOTE1L3NlbGZ0ZXN0OiBGaXggYW4gZXJyb3IgY29kZSBpbiBsaXZlX25v
YV9ncHIoKQoKRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoOCk6CiAgICAgIGRybS9pOTE1OiBDb252
ZXJ0IGRldmljZV9pbmZvIHRvIHVuY29yZS9kZV9yZWFkCiAgICAgIGRybS9pOTE1OiBVc2UgdGhl
IGd0IGluIEhBU19FTkdJTkUKICAgICAgZHJtL2k5MTU6IE1vdmUgZW5naW5lLXJlbGF0ZWQgbW1p
byBpbml0IHRvIGVuZ2luZXNfaW5pdF9tbWlvCiAgICAgIGRybS9pOTE1OiBNb3ZlIHRoZSBlbmdp
bmUgbWFzayB0byBpbnRlbF9ndF9pbmZvCiAgICAgIGRybS9pOTE1OiBJbnRyb2R1Y2UgZ3RfaW5p
dF9tbWlvCiAgICAgIGRybS9pOTE1L3NzZXU6IE1vdmUgc3NldSBkZXRlY3Rpb24gYW5kIGR1bXAg
dG8gaW50ZWxfc3NldQogICAgICBkcm0vaTkxNTogZ3QtZnkgc3NldSBkZWJ1Z2ZzCiAgICAgIGRy
bS9pOTE1OiBNb3ZlIHNzZXUgZGVidWdmcyB1bmRlciBndC8KCkZsYXZpbyBTdWxpZ29pICgxKToK
ICAgICAgZHJtL2k5MTU6IEZpeCBzcGVsbGluZyBtaXN0YWtlIGluIGk5MTVfcmVnLmgKCkphbmkg
TmlrdWxhICgxKToKICAgICAgZHJtL2k5MTU6IFVwZGF0ZSBEUklWRVJfREFURSB0byAyMDIwMDcx
NQoKSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoNik6CiAgICAgIGRybS9pOTE1L2Rpc3BsYXk6IElt
cGxlbWVudCBuZXcgY29tYm8gcGh5IGluaXRpYWxpemF0aW9uIHN0ZXAKICAgICAgZHJtL2k5MTUv
ZWhsOiBBZGQgbmV3IFBDSSBpZHMKICAgICAgZHJtL2k5MTUvdGdsOiBJbXBsZW1lbnQgV0FzIDE4
MDExNDY0MTY0IGFuZCAyMjAxMDkzMTI5NgogICAgICBkcm0vaTkxNS9kaXNwbGF5OiBSZXBsYWNl
IGRybV9pOTE1X3ByaXZhdGUgaW4gdm9sdGFnZSBzd2luZyBmdW5jdGlvbnMgYnkgaW50ZWxfZW5j
b2RlcgogICAgICBkcm0vaTkxNS9kaXNwbGF5OiBSZW1vdmUgcG9ydCBhbmQgcGh5IGZyb20gdm9s
dGFnZSBzd2luZyBmdW5jdGlvbnMKICAgICAgZHJtL2k5MTUvYmlvczogUGFyc2UgSE9CTCBwYXJh
bWV0ZXIKCkxlZSBTaGF3biBDICgxKToKICAgICAgZHJtL2k5MTUvbXN0OiBmaWx0ZXIgb3V0IHRo
ZSBkaXNwbGF5IG1vZGUgZXhjZWVkIHNpbmsncyBjYXBhYmlsaXR5CgpMdWNhcyBEZSBNYXJjaGkg
KDQpOgogICAgICBkcm0vaTkxNS9kaXNwbGF5OiBwcmVmZXIgZGlnX3BvcnQgdG8gcmVmZXJlbmNl
IGludGVsX2RpZ2l0YWxfcG9ydAogICAgICBkcm0vaTkxNTogZG8gbm90IHJlYWQgc3dpenpsZSBp
bmZvIGlmIHVuYXZhaWxhYmxlCiAgICAgIGRybS9pOTE1L2RnMTogYWRkIHN1cHBvcnQgZm9yIHRo
ZSBtYXN0ZXIgdW5pdCBpbnRlcnJ1cHQKICAgICAgZHJtL2k5MTUvZGcxOiBBZGQgZmFrZSBQQ0gK
Ckx5dWRlIFBhdWwgKDEpOgogICAgICBkcm0vcHJvYmVfaGVscGVyOiBBZGQgZHJtX2Nvbm5lY3Rv
cl9oZWxwZXJfZnVuY3MubW9kZV92YWxpZF9jdHgKCk1hYXJ0ZW4gTGFua2hvcnN0ICgxKToKICAg
ICAgZHJtL2k5MTU6IE1vdmUgY2VjX25vdGlmaWVyIHRvIGludGVsX2hkbWlfY29ubmVjdG9yX3Vu
cmVnaXN0ZXIsIHYyLgoKTWFuYXNpIE5hdmFyZSAoMik6CiAgICAgIGRybS9pOTE1L2RwOiBIZWxw
ZXIgZm9yIGNoZWNraW5nIERESV9CVUZfQ1RMIElkbGUgc3RhdHVzCiAgICAgIGRybS9pOTE1L2Rw
OiBIZWxwZXIgdG8gY2hlY2sgZm9yIERESSBCVUYgc3RhdHVzIHRvIGdldCBhY3RpdmUKCk1hdHQg
QXR3b29kICgxKToKICAgICAgUmV2ZXJ0ICJkcm0vaTkxNS9kcDogQ29ycmVjdGx5IGFkdmVydGlz
ZSBIQlIzIGZvciBHRU4xMSsiCgpNaWNoYcWCIFdpbmlhcnNraSAoNik6CiAgICAgIGRybS9pOTE1
L2d1YzogRXhwYW5kIGd1Y19pbmZvIGRlYnVnZnMgd2l0aCBtb3JlIGluZm9ybWF0aW9uCiAgICAg
IGRybS9pOTE1OiBSZWJvb3QgQ0kgaWYgd2UgZ2V0IHdlZGdlZCBkdXJpbmcgZHJpdmVyIGluaXQK
ICAgICAgZHJtL2k5MTU6IFByaW50IGNhbGxlciB3aGVuIHRhaW50aW5nIGZvciBDSQogICAgICBk
cm0vaTkxNTogRG9uJ3QgdGFpbnQgd2hlbiB1c2luZyBmYXVsdCBpbmplY3Rpb24KICAgICAgZHJt
L2k5MTUvdWM6IEV4dHJhY3QgdWMgdXNhZ2UgZGV0YWlscyBpbnRvIHNlcGFyYXRlIGRlYnVnZnMK
ICAgICAgZHJtL2k5MTUvaHVjOiBBZGp1c3QgSHVDIHN0YXRlIGFjY29yZGluZ2x5IGFmdGVyIEd1
QyBmZXRjaCBlcnJvcgoKUmFtYWxpbmdhbSBDICgxKToKICAgICAgZHJtL2k5MTUvaGRjcDogRml4
IHRoZSByZXR1cm4gaGFuZGxpbmcgb2YgZHJtX2hkY3BfY2hlY2tfa3N2c19yZXZva2VkCgpTdGFu
aXNsYXYgTGlzb3Zza2l5ICgxKToKICAgICAgZHJtL2k5MTUvdGdsOiBDbGFtcCBtaW5fY2RjbGsg
dG8gbWF4X2NkY2xrX2ZyZXEgdG8gdW5ibG9jayA4SwoKU3R1YXJ0IFN1bW1lcnMgKDEpOgogICAg
ICBkcm0vaTkxNTogQWRkIGhhc19tYXN0ZXJfdW5pdF9pcnEgZmxhZwoKU3VkZWVwIEhvbGxhICgx
KToKICAgICAgZHJtL2k5MTUvc2VsZnRlc3RzOiBGaXggY29tcGFyZSBmdW5jdGlvbnMgcHJvdmlk
ZWQgZm9yIHNvcnRpbmcKClVtZXNoIE5lcmxpZ2UgUmFtYXBwYSAoMSk6CiAgICAgIGRybS9pOTE1
L3BlcmY6IFVzZSBHVFQgd2hlbiBzYXZpbmcvcmVzdG9yaW5nIGVuZ2luZSBHUFIKClZlbmthdGEg
U2FuZGVlcCBEaGFuYWxha290YSAoMSk6CiAgICAgIGRybS9pOTE1L3NzZXU6IE1vdmUgc3NldV9p
bmZvIHVuZGVyIGd0X2luZm8KClZpbGxlIFN5cmrDpGzDpCAoMTYpOgogICAgICBkcm0vaTkxNS9m
YmM6IFVzZSB0aGUgY29ycmVjdCBwbGFuZSBzdHJpZGUKICAgICAgZHJtL2k5MTUvZmJjOiBGaXgg
bnVrZSBmb3IgcHJlLXNuYiBwbGF0Zm9ybXMKICAgICAgZHJtL2k5MTUvZmJjOiBFbmFibGUgZmJj
IG9uIGk4NjUKICAgICAgZHJtL2k5MTUvZmJjOiBBbGxvdyBGQkMgdG8gcmVjb21wcmVzcyBhZnRl
ciBhIDNEIHdvcmtsb2FkIG9uIGk4NXgvaTg2NQogICAgICBkcm0vaTkxNS9zZHZvOiBGaXggU0RW
TyBjb2xvcmltZXRyeSBiaXQgZGVmaW5lcwogICAgICBkcm0vaTkxNS9zZHZvOiBJbXBsZW1lbnQg
bGltaXRlZCBjb2xvciByYW5nZSBmb3IgU0RWTyBIRE1JIHByb3Blcmx5CiAgICAgIGRybS9pOTE1
OiBSZWplY3QgRFJNX01PREVfRkxBR19EQkxDTEsgd2l0aCBEVkkgc2lua3MKICAgICAgZHJtL2k5
MTUvc2R2bzogTWFrZSBTRFZPIGRlYWwgd2l0aCBIRE1JIHBpeGVsIHJlcGVhdAogICAgICBkcm0v
aTkxNS9zZHZvOiBNYWtlIC5nZXRfbW9kZXMoKSByZXR1cm4gdGhlIG51bWJlciBvZiBtb2Rlcwog
ICAgICBkcm0vaTkxNS9kdm86IE1ha2UgLmdldF9tb2RlcygpIHJldHVybiB0aGUgbnVtYmVyIG9m
IG1vZGVzCiAgICAgIGRybS9pOTE1OiBNb3ZlIGFsbCBGQkMgdy9hcyB0byAuaW5pdF9jbG9ja19n
YXRpbmcoKQogICAgICBkcm0vaTkxNTogRG9uJ3QgZG8gV2FGYmNUdXJuT2ZmRmJjV2F0ZXJtYXJr
IGZvciBnbGsKICAgICAgZHJtL2k5MTU6IExpbWl0IFdhRmJjSGlnaE1lbUJ3Q29ycnVwdGlvbkF2
b2lkYW5jZSB0byBza2wgYW5kIGJ4dAogICAgICBkcm0vaTkxNTogRG9jdW1lbnQgRkJDIHJlbGF0
ZWQgdy9hcyBtb3JlIHRob3JvdWdobHkKICAgICAgZHJtL2k5MTU6IFdBUk4gaWYgbWF4IHZzd2lu
Zy9wcmUtZW1waGFzaXMgdmlvbGF0ZXMgdGhlIERQIHNwZWMKICAgICAgZHJtL2k5MTU6IFJlY2Fs
Y3VsYXRlIEZCQyB3L2Egc3RyaWRlIHdoZW4gbmVlZGVkCgpZdWVIYWliaW5nICgxKToKICAgICAg
ZHJtL2k5MTU6IFJlbW92ZSB1bnVzZWQgaW5saW5lIGZ1bmN0aW9uIGRyYWluX2RlbGF5ZWRfd29y
aygpCgogZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjX2hlbHBlcl9pbnRlcm5hbC5oICAgICAgICAg
fCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVscGVyLmMgICAgICAgICAgICAg
ICAgIHwgIDk3ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMgICAgICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29tYm9fcGh5LmMgICAgIHwgIDI1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgICAgICAgICAgIHwgMzQ4ICsrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggICAgICAgfCAgIDIgKy0KIC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgIHwgIDEyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8ICAgNCArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAgNDAg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICAgICAgIHwg
MzY2ICsrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
ICAgICAgICAgICAgfCAgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMgIHwgICA5ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMgICAgICAgIHwgMTI5ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmggICAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwaW9fcGh5LmMgICAgICB8ICAzOCArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kdm8uYyAgICAgICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICAgICAgIHwgIDk4ICsrKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jICAgICAgICAgIHwgMTUzICsrLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgICAgICB8IDI3NyAr
KysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5oICAgICAg
ICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5j
ICAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bj
b24uaCAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nkdm8uYyAgICAgICAgICB8IDE0NSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zZHZvX3JlZ3MuaCAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAgICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jICAgICB8ICAgOSArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgICAgICAgfCAgMTggKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmggICAgICAgIHwgICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oICB8ICAgMSAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgICB8ICAy
MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAgICAgICAgICAg
fCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmggICAgICAg
ICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMg
ICAgICAgICB8ICA0MSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
YWdlcy5jICAgICAgICAgIHwgIDI5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2hyaW5rZXIuYyAgICAgICB8ICAzNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3RpbGluZy5jICAgICAgICAgfCAgIDIgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZGVidWdmc19ndC5jICAgICAgICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5jICAgICAgICAgICAgICAgfCAgMjIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYyAgICAgICAgIHwgICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jICAgICAgICB8ICAgNyArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgICAgICAgfCAgMTIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfc3NldS5jICAgICAgIHwg
ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgICAg
ICB8ICA5MSArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jICAg
ICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91
c2VyLmMgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0
LmMgICAgICAgICAgICAgICB8ICA0OSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3QuYyAgICAgICAgICAgICAgICAgfCAgMTggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmggICAgICAgICAgICAgICAgIHwgIDE3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9pcnEuYyAgICAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcG0uYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgICAgICB8ICAxMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCAgICAgICAgICAgICAgICB8ICAxMyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgICAgICAgfCAgOTIgKy0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9wcGd0dC5jICAgICAgICAgICAgICB8ICAx
OSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuYyAgICAgICAg
fCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgICAg
ICAgIHwgIDIzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oICAgICAg
ICAgICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXRfdHlw
ZXMuaCAgICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdf
c3VibWlzc2lvbi5jICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
cHMuYyAgICAgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5jICAgICAgICAgICAgICAgfCA1OTEgKysrKysrKysrKysrKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICAgICAgICAgICAgfCAgMTAgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXVfZGVidWdmcy5jICAgICAgIHwgMzA2ICsr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXVfZGVidWdmcy5oICAg
ICAgIHwgIDE3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgICAg
ICAgICAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMgICAgICAgIHwgIDIxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMu
YyAgICAgICAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
cmM2LmMgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X3Jwcy5jICAgICAgICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF90aW1lbGluZS5jICAgICAgICB8ICAxMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2Fkcy5jICAgICAgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmMgICAgICAgICAgICAgIHwgIDExICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Y19kZWJ1Z2ZzLmMgICAgICB8ICAyOSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYyAgICAgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Z0L2ludGVycnVwdC5jICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9tbWlvX2NvbnRleHQuYyAgICAgICAgICAgIHwgICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgICAgICB8IDI4
NiArLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAg
ICAgICAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAg
ICAgICAgICAgICB8ICAzMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCAgICAg
ICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jICAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0
cGFyYW0uYyAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5jICAgICAgICAgICAgICB8ICAzNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9ncHVfZXJyb3IuaCAgICAgICAgICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgICAgICAgfCAgNTkgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgICAgICAgICAgIHwgIDU1ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgICAgICB8ICAxNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICAgICAgIHwgIDE4ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgICAgICB8ICAy
MyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jICAgICAgICAgICAgICAgICAg
fCAgMTAgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oICAgICAgICAgICAgICAg
ICAgfCAgMTYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAg
ICAgICAgIHwgIDI0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYV90eXBlcy5oICAg
ICAgICAgICAgICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jICAgICAgICAgICB8IDY1MyArLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgICAgICAgIHwgIDE2ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wY2guYyAgICAgICAgICAgICAgICAgICB8ICAgNiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCAgICAgICAgICAgICAgICAgICB8ICAgNCArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgICAgICB8IDEwOCArKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAgICAgICB8ICAy
MCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggICAgICAgICAgICAgICAg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3BlcmYuYyAgICAg
ICAgIHwgMTMzICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1
ZXN0LmMgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tf
Z2VtX2RldmljZS5jICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9t
b2NrX2d0dC5jICAgICAgICAgIHwgIDEyICstCiBpbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxw
ZXJfdnRhYmxlcy5oICAgICAgICAgICB8ICA0MiArKwogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDggKwogMTE3IGZpbGVzIGNoYW5nZWQsIDI5
ODkgaW5zZXJ0aW9ucygrKSwgMjExNSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1X2RlYnVnZnMuYwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXVfZGVidWdmcy5oCgotLSAK
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
