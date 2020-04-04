Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C7C19E248
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 03:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8EF6ECD0;
	Sat,  4 Apr 2020 01:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 313 seconds by postgrey-1.36 at gabe;
 Sat, 04 Apr 2020 01:46:19 UTC
Received: from mail27.static.mailgun.info (mail27.static.mailgun.info
 [104.130.122.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005B56ECD0
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 01:46:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585964781; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=8T9Mnfu0ze5ZEQgVVn50D4Ow8szQI4g8wY/LumPUeDM=;
 b=l3+7w2owiNpk/WpJPwgFRgGvW0HtsnUlpB+UjylUtENKx8pHx6QXpq20uT9BW0sacNRL+eAq
 CYhPE2rBtSpCtLD+8OXM/bpjRQlbyXGJs2fs5aVcSNjld4MrWAdtJ+XEJNkJYHJE6dZL9nL3
 pwdeBtezlQoLsQhvtJ4gV28bpJo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e87e5a1.7fbf5471a650-smtp-out-n03;
 Sat, 04 Apr 2020 01:40:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9D7C3C4478F; Sat,  4 Apr 2020 01:40:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: abhinavk)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C61FFC433F2;
 Sat,  4 Apr 2020 01:40:46 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 18:40:46 -0700
From: abhinavk@codeaurora.org
To: Ville Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <20200403204008.14864-17-ville.syrjala@linux.intel.com>
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-17-ville.syrjala@linux.intel.com>
Message-ID: <7cd8b081a383125732dbddd32116e46e@codeaurora.org>
X-Sender: abhinavk@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Subject: Re: [Intel-gfx] [PATCH v2 16/17] drm: Nuke mode->private_flags
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
Cc: jeykumar@quicinc.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 nganji@quicinc.com, pdhaval@quicinc.com, Sam Ravnborg <sam@ravnborg.org>,
 aravindh@quicinc.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUKClRoYW5rcyBmb3IgdGhlIHBhdGNoLgoKT3VyIHVuZGVyc3RhbmRpbmcgb2YgcHJp
dmF0ZV9mbGFncyB3YXMgdGhhdCB3ZSBjYW4gdXNlIGl0IHdpdGhpbiBvdXIgCmRyaXZlcnMgdG8g
aGFuZGxlIHZlbmRvciBzcGVjaWZpYyBmZWF0dXJlcy4KSGVuY2Ugd2UgZG8gaGF2ZSBzZXZlcmFs
IGZlYXR1cmVzIGluIG91ciBkb3duc3RyZWFtIGRyaXZlcnMgYXMgd2VsbCBhcyAKc29tZSBwbGFu
bmVkIHdvcmsgYmFzZWQgb24gdGhpcy4KClRoaXMgd2FzIHRoZSBvbmx5IG1ldGhvZCB0byBwYXNz
IGFyb3VuZCBhbmQgY29uc3VtZSB0aGUgZHJpdmVyIG9ubHkgCmluZm9ybWF0aW9uIHdoaWNoIHdl
IGhhdmUgYmVlbiB1c2luZy4KCkluIHRoZSBjdXJyZW50IHF1YWxjb21tIHVwc3RyZWFtIGRpc3Bs
YXkgZHJpdmVycywgdGhlIG9ubHkgdXNhZ2Ugb2YgdGhlIAptb2RlLT5wcml2YXRlX2ZsYWdzIGlz
IHdoYXQgeW91IGhhdmUgcmVtb3ZlZCBpbiAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
YXRjaC8xMTQ3MzQ5Ny8uCgpIb3dldmVyLCBmb3Igb3RoZXIgcHJvamVjdHMgd2hpY2ggZG8gbm90
IHVzZSB1cHN0cmVhbSBkcml2ZXJzIHlldCwgd2UgCmhhdmUgc2V2ZXJhbCBmZWF0dXJlcyBhbHJl
YWR5IHdoaWNoIGFyZSB1c2luZyB0aGUgbW9kZS0+cHJpdmF0ZV9mbGFncy4KCldlIGRvIGhhdmUg
YSBwbGFuIHRvIHJlbW92ZSB0aGUgdXNhZ2Ugb2YgbW9kZS0+cHJpdmF0ZV9mbGFncyBmb3IgdGhv
c2UgCmRyaXZlcnMgYXMgd2VsbCBidXQgaXRzIG5vdCByZWFkeSB5ZXQuCgpUaGVzZSBkb3duc3Ry
ZWFtIGRyaXZlcnMgc3RpbGwgdXNlIHRoZSB1cHN0cmVhbSBkcm0gZmlsZXMgZm9yIApjb21waWxh
dGlvbi4KClNvIGhvdyBpdCB3b3JrcyBpcyB3ZSB1c2UgYWxsIHRoZSBoZWFkZXJzIHVuZGVyIGlu
Y2x1ZGUvZHJtIGFuZCBhbHNvIHRoZSAKZmlsZXMgdW5kZXIgZHJpdmVycy9ncHUvZHJtIGFzLWl0
LWlzIGZyb20gdXBzdHJlYW0gYnV0IG1haW50YWluIG91ciAKZHJpdmVycyBvbiB0b3Agb2YgdGhp
cy4KClJlbW92aW5nIHRoaXMgd2lsbCByZXN1bHQgaW4gY29tcGlsYXRpb24gZmFpbHVyZXMgZm9y
IHVzIGluIHRoZSBuZWFyIAp0ZXJtLgoKQ2FuIHdlIGtlZXAgdGhpcyBvbmUgYXMtaXQtaXMgYW5k
IHdoZW4gb3VyIGNoYW5nZXMgYXJlIHJlYWR5IHRvIHBvc3QgaXQgCnVwc3RyZWFtIHdlIHNoYWxs
IHJlbW92ZSBwcml2YXRlX2ZsYWdzIGZyb20gdGhlIGRybV9tb2Rlcy5oCgpUaGFua3MKCkFiaGlu
YXYKCk9uIDIwMjAtMDQtMDMgMTM6NDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBUaGUgbGFz
dCB0d28gdXNlcyBvZiBtb2RlLT5wcml2YXRlX2ZsYWdzIChpbiBpOTE1IGFuZCBnbWE1MDApCj4g
YXJlIG5vdyBnb25lLiBTbyBsZXQncyByZW1vdmUgbW9kZS0+cHJpdmF0ZV9mbGFncyBlbnRpcmVs
eS4KPiAKPiBDQzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+IENjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBFbWlsIFZlbGlrb3YgPGVtaWwu
bC52ZWxpa292QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBpbmNsdWRlL2RybS9kcm1fbW9k
ZXMuaCB8IDEwIC0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9kZXMuaCBiL2luY2x1ZGUvZHJtL2Ry
bV9tb2Rlcy5oCj4gaW5kZXggNDdkNjJiOWQ4ZDIwLi4xZTk3MTM4YTliOGMgMTAwNjQ0Cj4gLS0t
IGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZXMu
aAo+IEBAIC0zNDgsMTYgKzM0OCw2IEBAIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIHsKPiAgCSAq
Lwo+ICAJdTggdHlwZTsKPiAKPiAtCS8qKgo+IC0JICogQHByaXZhdGVfZmxhZ3M6Cj4gLQkgKgo+
IC0JICogRHJpdmVyIHByaXZhdGUgZmxhZ3MuIHByaXZhdGVfZmxhZ3MgY2FuIG9ubHkgYmUgdXNl
ZCBmb3IgbW9kZQo+IC0JICogb2JqZWN0cyBwYXNzZWQgdG8gZHJpdmVycyBpbiBtb2Rlc2V0IG9w
ZXJhdGlvbnMuIEl0IHNob3VsZG4ndCBiZSAKPiB1c2VkCj4gLQkgKiBieSBhdG9taWMgZHJpdmVy
cyBzaW5jZSB0aGV5IGNhbiBzdG9yZSBhbnkgYWRkaXRpb25hbCBkYXRhIGJ5Cj4gLQkgKiBzdWJj
bGFzc2luZyBzdGF0ZSBzdHJ1Y3R1cmVzLgo+IC0JICovCj4gLQl1OCBwcml2YXRlX2ZsYWdzOwo+
IC0KPiAgCS8qKgo+ICAJICogQGhlYWQ6Cj4gIAkgKgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
