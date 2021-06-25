Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE5C3B3E2A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 10:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36836ECE9;
	Fri, 25 Jun 2021 08:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539386ECE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 08:03:18 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id w127so10448106oig.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 01:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TrbMCl6sVPLRSHP5Bq+bNTHMKSmfLfsLeFdRsNQGs1g=;
 b=iOUfuN6l5QiCfxWR5QxOMwfhq+6ws2WYbn3Aake5d8TV1H9k98BvmBJGEybMO325u0
 2aFv6n6Nmn/OjdTMXNdS3IRvRIrMnQwVOQqa2pH4ZFjvA/TyTrokUYfbe+SLrf/Bkiw1
 mrY1q1cqRaphCrTplofKRYAPIUNPs2khyww+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TrbMCl6sVPLRSHP5Bq+bNTHMKSmfLfsLeFdRsNQGs1g=;
 b=VaGWQxmVFb910PFvsepYBQ9t8DTdKnO4yP6ZTe4v99oSdHweWRY+NVvBfiQw9YtluG
 E1cUDIL1NCE2fVeTA8a2DccBwZEZ0HKsujqf0WNMbJM6yb2Red92fbyvgFDfcrYGb1E/
 qsR/PKSHkh5xrS7OyvtnkE3LjnpXbiK8X97IM81Dj9oc6Nx+JhcMsMIU0zLzLx8xfN5o
 dZ9sGF5wwHOGV5eRsug5TDbaawVa2Bjz4bkUk/IJdZvQUJIrx48xEe066N4I5eYktdYb
 8by78mScHgs/8tr3QImbJRJDdbngL16Bkrz1An/kU8hzYyslRrnlBF3ldHNSoZCYI7i8
 oa0g==
X-Gm-Message-State: AOAM5320+wTpXNnRYL+/B5fy56IJ+i83DTdPl+uFm8TLB3PLsT/PCvFt
 2rjAUs7Em+fkLZ6ld5QXMbbAGgng5auxsgMsDfq5Gg==
X-Google-Smtp-Source: ABdhPJy1AJsJIRsqUJK1z58l9LOhiHTgv0CEIgHePd0ecR4zNoGitRlRZNrM41yFok8+7dsrQmCve6iMWa2ZEbg7u3w=
X-Received: by 2002:aca:1a0c:: with SMTP id a12mr10133908oia.14.1624608197755; 
 Fri, 25 Jun 2021 01:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210624112914.311984-1-thomas.hellstrom@linux.intel.com>
 <CAKMK7uEeV0nvf+4ae2rYQHMBQ2rm2NNKT+n8CvDU=gdaEXHHBw@mail.gmail.com>
 <c9c9ab2d-e55c-6426-1d4f-20248040f111@linux.intel.com>
In-Reply-To: <c9c9ab2d-e55c-6426-1d4f-20248040f111@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 25 Jun 2021 10:03:06 +0200
Message-ID: <CAKMK7uGRDwda+0b8ZPsY7QdnEoV4pztJ3QWbJSrqNGLNv0QM0Q@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Reinstate the mmap ioctl for
 some platforms
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMjUsIDIwMjEgYXQgOTo0OCBBTSBNYWFydGVuIExhbmtob3JzdAo8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9wIDI0LTA2LTIwMjEgb20g
MTQ6MDQgc2NocmVlZiBEYW5pZWwgVmV0dGVyOgo+ID4gT24gVGh1LCBKdW4gMjQsIDIwMjEgYXQg
MToyOSBQTSBUaG9tYXMgSGVsbHN0csO2bQo+ID4gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPiB3cm90ZToKPiA+PiBSZWluc3RhdGUgdGhlIG1tYXAgaW9jdGwgZm9yIGFsbCBjdXJy
ZW50IGludGVncmF0ZWQgcGxhdGZvcm1zLgo+ID4+IFRoZSBpbnRlbnRpb24gd2FzIHJlYWxseSB0
byBoYXZlIGl0IGRpc2FibGVkIGZvciBkaXNjcmV0ZSBncmFwaGljcwo+ID4+IHdoZXJlIHdlIGVu
Zm9yY2UgYSBzaW5nbGUgbW1hcCBtb2RlLgo+ID4+Cj4gPj4gRml4ZXM6IDM1Y2JkOTFlYjU0MSAo
ImRybS9pOTE1OiBEaXNhYmxlIG1tYXAgaW9jdGwgZm9yIGdlbjEyKyIpCj4gPj4gU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
Pgo+ID4+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cj4gPiBBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+
Cj4gPj4gLS0tCj4gPj4gdjI6Cj4gPj4gLSBBZGRlZCBhIFItQi4KPiA+PiAtIEZpeGVkIHVwIHRo
ZSBjb2RlIGNvbW1lbnQgYSBiaXQuCj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCA3ICsrKystLS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+ID4+IGluZGV4IDJmZDE1NTc0MmJkMi4uNGY1MGE1MDhj
N2EwIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9t
bWFuLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5j
Cj4gPj4gQEAgLTYyLDEwICs2MiwxMSBAQCBpOTE1X2dlbV9tbWFwX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gPj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqOwo+ID4+ICAgICAgICAgdW5zaWduZWQgbG9uZyBhZGRyOwo+ID4+Cj4gPj4g
LSAgICAgICAvKiBtbWFwIGlvY3RsIGlzIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0
ZXIgVEdMLUxQLiAgVGhpcyBhbHNvCj4gPj4gLSAgICAgICAgKiBjb3ZlcnMgYWxsIHBsYXRmb3Jt
cyB3aXRoIGxvY2FsIG1lbW9yeS4KPiA+PiArICAgICAgIC8qCj4gPj4gKyAgICAgICAgKiBtbWFw
IGlvY3RsIGlzIGRpc2FsbG93ZWQgZm9yIGFsbCBkaXNjcmV0ZSBwbGF0Zm9ybXMsCj4gPj4gKyAg
ICAgICAgKiBhbmQgZm9yIGFsbCBwbGF0Zm9ybXMgd2l0aCBHUkFQSElDU19WRVIgPiAxMi4KPiA+
PiAgICAgICAgICAqLwo+ID4+IC0gICAgICAgaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSAxMiAm
JiAhSVNfVElHRVJMQUtFKGk5MTUpKQo+ID4+ICsgICAgICAgaWYgKElTX0RHRlgoaTkxNSkgfHwg
R1JBUEhJQ1NfVkVSKGk5MTUpID4gMTIpCj4gPj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU9Q
Tk9UU1VQUDsKPiA+Pgo+ID4+ICAgICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgfihJOTE1X01NQVBf
V0MpKQo+ID4+IC0tCj4gPj4gMi4zMS4xCj4gPj4KPiA+Cj4gV291bGQga2VlcGluZyB0aGlzIGNo
YW5nZSB1bmFwcGxpZWQgYnJlYWsgYW55IGN1cnJlbnRseSBzaGlwcGluZyBwbGF0Zm9ybXM/IElm
IG5vdCwgY291bGQgd2UgbGVhdmUgaXQgYXMtaXM/CgpJdCBicmVha3MgbWVkaWEgb24gcmtsL2Fk
bCBhZmFpay4gV2hpY2ggc2hvdWxkIGJlIHBhcnQgb2YgdGhlIGNvbW1pdCBtZXNzYWdlLgotRGFu
aWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
