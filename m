Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBC7169865
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Feb 2020 16:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89691892C5;
	Sun, 23 Feb 2020 15:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AFA2892C5
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Feb 2020 15:28:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 07:28:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,476,1574150400"; d="scan'208";a="230387309"
Received: from rcoelln-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Feb 2020 07:28:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200219174631.GC2733348@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200219154542.19574-1-jani.nikula@intel.com>
 <20200219174631.GC2733348@mdroper-desk1.amr.corp.intel.com>
Date: Sun, 23 Feb 2020 17:28:54 +0200
Message-ID: <87k14dtj9l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: make dbuf configurations const
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBGZWIgMjAyMCwgTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMDU6NDU6NDJQTSArMDIwMCwgSmFu
aSBOaWt1bGEgd3JvdGU6Cj4+IEVuc3VyZSBjb25zdCBkYXRhIGdvZXMgdG8gcm9kYXRhLgo+PiAK
Pj4gRml4ZXM6IGZmMmNkODYzNWU0MSAoImRybS9pOTE1OiBDb3JyZWN0bHkgbWFwIERCVUYgc2xp
Y2VzIHRvIHBpcGVzIikKPj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+Cj4+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVs
LmNvbT4KPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4KPiBSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
ClRoYW5rcyBmb3IgdGhlIHJldmlldywgcHVzaGVkIHRvIGRpbnEuCgpCUiwKSmFuaS4KCj4KPj4g
LS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNCArKy0tCj4+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCj4+IGluZGV4IGZmYWMwYjg2MmNhNS4uOWI3NGMzN2U0ZmE0IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPj4gQEAgLTQxNzgsNyArNDE3OCw3IEBAIHN0cnVj
dCBkYnVmX3NsaWNlX2NvbmZfZW50cnkgewo+PiAgICogYXMgaXMgZnJvbSBCU3BlYyBpdHNlbGYg
LSB0aGF0IHdheSBpdCBpcyBhdCBsZWFzdCBlYXNpZXIKPj4gICAqIHRvIGNvbXBhcmUsIGNoYW5n
ZSBhbmQgY2hlY2suCj4+ICAgKi8KPj4gLXN0YXRpYyBzdHJ1Y3QgZGJ1Zl9zbGljZV9jb25mX2Vu
dHJ5IGljbF9hbGxvd2VkX2RidWZzW10gPQo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkYnVmX3Ns
aWNlX2NvbmZfZW50cnkgaWNsX2FsbG93ZWRfZGJ1ZnNbXSA9Cj4+ICAvKiBBdXRvZ2VuZXJhdGVk
IHdpdGggaWd0L3Rvb2xzL2ludGVsX2RidWZfbWFwIHRvb2w6ICovCj4+ICB7Cj4+ICAJewo+PiBA
QCAtNDI0MCw3ICs0MjQwLDcgQEAgc3RhdGljIHN0cnVjdCBkYnVmX3NsaWNlX2NvbmZfZW50cnkg
aWNsX2FsbG93ZWRfZGJ1ZnNbXSA9Cj4+ICAgKiBhcyBpcyBmcm9tIEJTcGVjIGl0c2VsZiAtIHRo
YXQgd2F5IGl0IGlzIGF0IGxlYXN0IGVhc2llcgo+PiAgICogdG8gY29tcGFyZSwgY2hhbmdlIGFu
ZCBjaGVjay4KPj4gICAqLwo+PiAtc3RhdGljIHN0cnVjdCBkYnVmX3NsaWNlX2NvbmZfZW50cnkg
dGdsX2FsbG93ZWRfZGJ1ZnNbXSA9Cj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRidWZfc2xpY2Vf
Y29uZl9lbnRyeSB0Z2xfYWxsb3dlZF9kYnVmc1tdID0KPj4gIC8qIEF1dG9nZW5lcmF0ZWQgd2l0
aCBpZ3QvdG9vbHMvaW50ZWxfZGJ1Zl9tYXAgdG9vbDogKi8KPj4gIHsKPj4gIAl7Cj4+IC0tIAo+
PiAyLjIwLjEKPj4gCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
