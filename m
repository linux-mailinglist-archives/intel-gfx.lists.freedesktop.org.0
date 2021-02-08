Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A50313B40
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:44:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9F76E977;
	Mon,  8 Feb 2021 17:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69BAC6E977
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:44:06 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id v193so11024374oie.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Feb 2021 09:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MH5/sY+y7FQVxv7PFoPPmrEPWvu3cCp7YyZzxLUeNbw=;
 b=equbLCJn0nUw7+RXkrZ1H4hH+BzlwNFKP9APFSD9xckm1wU9TV0jVPmWUSTRjSPKbR
 WSMFVY5vFEr8nOIsLd8BcIS15yDtM+95/MHXPdeZymt7u4cvTAsqIT9K5/cUXnROqX6D
 XMyJbwj51hm7RJpFvBXyz0pMHcjNQ2283tL0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MH5/sY+y7FQVxv7PFoPPmrEPWvu3cCp7YyZzxLUeNbw=;
 b=hzTT6Q3ZBL81hs6h5qvqzuR6759xF7ldFC9xI/UnE4GerHe92nr26Q+YVu+yoHQSq/
 jgmMpsSX/YFU14UVo72jDLLlsOEah+FnekXKVD4rGjENbyrxV+fzjkV65DG8hR+BBLq0
 id7z8qDL/2Z+QRYtHTMh+Ez6nqjRKEyimLJAqbYeziaG+c2tEnmkTnh8TcsHqhAOPxhy
 hxTAk8gjpBhOWqM1dR1qOnmZIrLrG3xGH7+KpIQW+QYvi8xK3qTjqr8ldMxk5JF/wJve
 qVf9kQFO8gZsD5QmXCmuDP5qGtfb5VvE389JYkhrOo6MYHaFC4nd2dfgDVzXOkUqv+sU
 3dUg==
X-Gm-Message-State: AOAM5314ULUxjSEvPCe4fHygaBvsPst+Ohryt9yoHKytBHT72P4a3E+p
 hf6mAaYFDff3SeS0PkImuQy1nLlJ9XaKsTZ6WUPdWg==
X-Google-Smtp-Source: ABdhPJzI41hG+OYYCdJDKBev4iBMFCmYdjDGWkJuHj+F1NtgM+v+xd+Ziaum3y+zOVyc2k0QFyCzd9B9b9UNSY+R6R0=
X-Received: by 2002:a05:6808:294:: with SMTP id
 z20mr4042310oic.14.1612806245569; 
 Mon, 08 Feb 2021 09:44:05 -0800 (PST)
MIME-Version: 1.0
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <YBwTgHwZwMr8PwMr@phenom.ffwll.local> <YBwY8DZnrPNXYvfy@intel.com>
 <YB1oU6asAR3ki4ZT@phenom.ffwll.local> <YB1xKG317Zp7NogO@intel.com>
 <YB22V+n2bdIWrH2m@intel.com> <YCEK1AWP5DarlMIt@phenom.ffwll.local>
 <YCFtuRvpm8OpmdR4@intel.com>
In-Reply-To: <YCFtuRvpm8OpmdR4@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 8 Feb 2021 18:43:53 +0100
Message-ID: <CAKMK7uG21d_w47eVpGG4JyyT7iXpySHWf9y-+wCOGTXb682WFQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/vblank: Avoid storing a timestamp for
 the same frame twice
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBGZWIgOCwgMjAyMSBhdCA1OjU4IFBNIFZpbGxlIFN5cmrDpGzDpAo8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBGZWIgMDgsIDIwMjEgYXQg
MTA6NTY6MzZBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE9uIEZyaSwgRmViIDA1
LCAyMDIxIGF0IDExOjE5OjE5UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4g
T24gRnJpLCBGZWIgMDUsIDIwMjEgYXQgMDY6MjQ6MDhQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+ID4gPiA+IE9uIEZyaSwgRmViIDA1LCAyMDIxIGF0IDA0OjQ2OjI3UE0gKzAxMDAs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gPiBPbiBUaHUsIEZlYiAwNCwgMjAyMSBhdCAw
NTo1NToyOFBNICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFRo
dSwgRmViIDA0LCAyMDIxIGF0IDA0OjMyOjE2UE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6
Cj4gPiA+ID4gPiA+ID4gT24gVGh1LCBGZWIgMDQsIDIwMjEgYXQgMDQ6MDQ6MDBBTSArMDIwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+ID4gZHJtX3ZibGFua19yZXN0b3JlKCkgZXhpc3RzIGJlY2F1c2UgY2VydGFpbiBwb3dl
ciBzYXZpbmcgc3RhdGVzCj4gPiA+ID4gPiA+ID4gPiBjYW4gY2xvYmJlciB0aGUgaGFyZHdhcmUg
ZnJhbWUgY291bnRlci4gVGhlIHdheSBpdCBkb2VzIHRoaXMgaXMKPiA+ID4gPiA+ID4gPiA+IGJ5
IGd1ZXNzdGltYXRpbmcgaG93IG1hbnkgZnJhbWVzIHdlcmUgbWlzc2VkIHB1cmVseSBiYXNlZCBv
bgo+ID4gPiA+ID4gPiA+ID4gdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgbGFzdCBzdG9yZWQg
dGltZXN0YW1wIHZzLiBhIG5ld2x5Cj4gPiA+ID4gPiA+ID4gPiBzYW1wbGVkIHRpbWVzdGFtcC4K
PiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBJZiB3ZSBzaG91bGQgY2FsbCB0aGlzIGZ1
bmN0aW9uIGJlZm9yZSBhIGZ1bGwgZnJhbWUgaGFzCj4gPiA+ID4gPiA+ID4gPiBlbGFwc2VkIHNp
bmNlIHdlIHNhbXBsZWQgdGhlIGxhc3QgdGltZXN0YW1wIHdlIHdvdWxkIGVuZCB1cAo+ID4gPiA+
ID4gPiA+ID4gd2l0aCBhIHBvc3NpYmx5IHNsaWdodGx5IGRpZmZlcmVudCB0aW1lc3RhbXAgdmFs
dWUgZm9yIHRoZQo+ID4gPiA+ID4gPiA+ID4gc2FtZSBmcmFtZS4gQ3VycmVudGx5IHdlIHdpbGwg
aGFwcGlseSBvdmVyd3JpdGUgdGhlIGFscmVhZHkKPiA+ID4gPiA+ID4gPiA+IHN0b3JlZCB0aW1l
c3RhbXAgZm9yIHRoZSBmcmFtZSB3aXRoIHRoZSBuZXcgdmFsdWUuIFRoaXMKPiA+ID4gPiA+ID4g
PiA+IGNvdWxkIGNhdXNlIHVzZXJzcGFjZSB0byBvYnNlcnZlIHR3byBkaWZmZXJlbnQgdGltZXN0
YW1wcwo+ID4gPiA+ID4gPiA+ID4gZm9yIHRoZSBzYW1lIGZyYW1lIChhbmQgdGhlIHRpbWVzdGFt
cCBjb3VsZCBldmVuIGdvCj4gPiA+ID4gPiA+ID4gPiBiYWNrd2FyZHMgZGVwZW5kaW5nIG9uIGhv
dyBtdWNoIGVycm9yIHdlIGludHJvZHVjZSB3aGVuCj4gPiA+ID4gPiA+ID4gPiBjb3JyZWN0aW5n
IHRoZSB0aW1lc3RhbXAgYmFzZWQgb24gdGhlIHNjYW5vdXQgcG9zaXRpb24pLgo+ID4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiA+IFRvIGF2b2lkIHRoYXQgbGV0J3Mgbm90IHVwZGF0ZSB0aGUg
c3RvcmVkIHRpbWVzdGFtcCB1bmxlc3Mgd2UncmUKPiA+ID4gPiA+ID4gPiA+IGFsc28gaW5jcmVt
ZW50aW5nIHRoZSBzZXF1ZW5jZSBjb3VudGVyLiBXZSBkbyBzdGlsbCB3YW50IHRvIHVwZGF0ZQo+
ID4gPiA+ID4gPiA+ID4gdmJsYW5rLT5sYXN0IHdpdGggdGhlIGZyZXNobHkgc2FtcGxlZCBodyBm
cmFtZSBjb3VudGVyIHZhbHVlIHNvCj4gPiA+ID4gPiA+ID4gPiB0aGF0IHN1YnNlcXVlbnQgdmJs
YW5rIGlycXMvcXVlcmllcyBjYW4gYWN0dWFsbHkgdXNlIHRoZSBodyBmcmFtZQo+ID4gPiA+ID4g
PiA+ID4gY291bnRlciB0byBkZXRlcm1pbmUgaG93IG1hbnkgZnJhbWVzIGhhdmUgZWxhcHNlZC4K
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEhtIEknbSBub3QgZ2V0dGluZyB0aGUgcmVhc29u
IGZvciB3aHkgd2Ugc3RvcmUgdGhlIHVwZGF0ZWQgaHcgdmJsYW5rCj4gPiA+ID4gPiA+ID4gY291
bnRlcj8KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQmVjYXVzZSBuZXh0IHRpbWUgYSB2Ymxhbmsg
aXJxIGhhcHBlbnMgdGhlIGNvZGUgd2lsbCBkbzoKPiA+ID4gPiA+ID4gZGlmZiA9IGN1cnJlbnRf
aHdfY291bnRlciAtIHZibGFuay0+bGFzdAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiB3aGljaCB3
b24ndCB3b3JrIHZlcnkgd2VsbCBpZiB2YmxhbmstPmxhc3QgaXMgZ2FyYmFnZS4KPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gVXBkYXRpbmcgdmJsYW5rLT5sYXN0IGlzIHByZXR0eSBtdWNoIHdoeSBk
cm1fdmJsYW5rX3Jlc3RvcmUoKQo+ID4gPiA+ID4gPiBleGlzdHMgYXQgYWxsLgo+ID4gPiA+ID4K
PiA+ID4gPiA+IE9oIHN1cmUsIF9yZXN0b3JlIGhhcyB0byB1cGRhdGUgdGhpcywgdG9nZXRoZXIg
d2l0aCB0aGUgdGltZXN0YW1wLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEJ1dCB5b3VyIGNvZGUgYWRk
cyBzdWNoIGFuIHVwZGF0ZSB3aGVyZSB3ZSB1cGRhdGUgdGhlIGh3IHZibGFuayBjb3VudGVyLAo+
ID4gPiA+ID4gYnV0IG5vdCB0aGUgdGltZXN0YW1wLCBhbmQgdGhhdCBmZWVscyBidWdneS4gRWl0
aGVyIHdlJ3JlIHN0aWxsIGluIHRoZQo+ID4gPiA+ID4gc2FtZSBmcmFtZSwgYW5kIHRoZW4gd2Ug
c2hvdWxkIHN0b3J5IG5vdGhpbmcuIE9yIHdlIGFkdmFuY2VkLCBhbmQgdGhlbiB3ZQo+ID4gPiA+
ID4gcHJvYmFibHkgd2FudCBhIG5ldyB0aW1lc3RhbXB0IGZvciB0aGF0IGZyYW1lIHRvby4KPiA+
ID4gPgo+ID4gPiA+IEV2ZW4gaWYgd2UncmUgc3RpbGwgaW4gdGhlIHNhbWUgZnJhbWUgdGhlIGh3
IGZyYW1lIGNvdW50ZXIgbWF5IGFscmVhZHkKPiA+ID4gPiBoYXZlIGJlZW4gcmVzZXQgZHVlIHRv
IHRoZSBwb3dlciB3ZWxsIGhhdmluZyBiZWVuIHR1cm5lZCBvZmYuIFRoYXQgaXMKPiA+ID4gPiB3
aGF0IEknbSB0cnlpbmcgdG8gZml4IGhlcmUuCj4gPiA+ID4KPiA+ID4gPiBOb3cgSSBzdXBwb3Nl
IHRoYXQncyBmYWlybHkgdW5saWtlbHksIGF0IGxlYXN0IHdpdGggUFNSIHdoaWNoIHByb2JhYmx5
Cj4gPiA+ID4gZG9lcyBpbXBvc2Ugc29tZSBleHRyYSBkZWxheXMgYmVmb3JlIHRoZSBwb3dlciBn
ZXRzIHlhbmtlZC4gQnV0IGF0IGxlYXN0Cj4gPiA+ID4gdGhlb3JldGljYWxseSBwb3NzaWJsZS4K
PiA+ID4KPiA+ID4gUG9uZGVyaW5nIGFib3V0IHRoaXMgYSBiaXQgZnVydGhlci4gSSB0aGluayB0
aGUgZmFjdCB0aGF0IHRoZSBjdXJyZW50Cj4gPiA+IGNvZGUgdGFrZXMgdGhlIHJvdW5kLXRvLWNs
b3Nlc3QgYXBwcm9hY2ggSSB1c2VkIGZvciB0aGUgdmJsYW5rIGhhbmRsZXIKPiA+ID4gaXMgcGVy
aGFwcyBhIGJpdCBiYWQuIEl0IGNvdWxkIHB1c2ggdGhlIHNlcSBjb3VudGVyIGZvcndhcmQgaWYg
d2UncmUKPiA+ID4gcGFzdCB0aGUgaGFsZndheSBwb2ludCBvZiBhIGZyYW1lLiBJIHRoaW5rIHRo
YXQgcm91bmRpbmcgYmVoYXZpb3VyCj4gPiA+IG1ha2VzIHNlbnNlIGZvciB0aGUgaXJxIHNpbmNl
IHRob3NlIHRpY2sgc3RlYWRpbHkgYW5kIHNvIGFsbG93aW5nIGEgYml0Cj4gPiA+IG9mIGVycm9y
IGVpdGhlciB3YXkgc2VlbXMgY29ycmVjdCB0byBtZS4gUGVyaGFwcyByb3VuZC1kb3duIG1pZ2h0
IGJlCj4gPiA+IHRoZSBiZXR0ZXIgb3B0aW9uIGZvciBfcmVzdG9yZSgpLiBOb3QgcXVpdGVzIHN1
cmUsIG5lZWQgbW9yZSB0aGlua2luZwo+ID4gPiBwcm9iYWJseS4KPiA+Cj4gPiBZZXMgdGhpcyBp
cyB0aGUgcm91bmRpbmcgSSdtIHdvcnJpZWQgYWJvdXQuCj4KPiBBY3R1YWxseSBJIGRvbid0IHRo
aW5rIHRoaXMgaXMgcmVhbGx5IGFuIGlzc3VlIHNpbmNlIHdlIGFyZSB3b3JraW5nCj4gd2l0aCB0
aGUgY29ycmVjdGVkIHRpbWVzdGFtcHMgaGVyZS4gVGhvc2UgYWx3YXlzIGxpbmUgdXAgd2l0aAo+
IGZyYW1lcywgc28gdW5sZXNzIHRoZSBjb3JyZWN0aW9uIGlzIHJlYWxseSBidWdneSBvciB0aGUg
aHcgc29tZWhvdwo+IHNraXBzIGEgcGFydGlhbCBmcmFtZSBpdCBzaG91bGQgd29yayByYXRoZXIg
d2VsbC4gQXQgbGVhc3Qgd2hlbgo+IG9wZXJhdGluZyB3aXRoIHNtYWxsIHRpbWVzY2FsZXMuIEZv
ciBsYXJnZSBnYXBzIHRoZSBlcnJvciBtaWdodAo+IGNyZWVwIHVwLCBidXQgSSBkb24ndCB0aGlu
ayBhIHNtYWxsIGVycm9yIGluIHRoZSBwcmVkaWN0ZWQgc2VxCj4gbnVtYmVyIG92ZXIgYSBsb25n
IHRpbWVzcGFuIGlzIHJlYWxseSBhIHByb2JsZW0uCgpUaGF0IGNvcnJlY3RlZCB0aW1lc3RhbXAg
aXMgd2hhdCBjYW4gZ28gd3JvbmcgSSB0aGluazogVGhlcmUncyBubwpndWFyYW50ZWUgdGhhdCBk
cm1fY3J0Y192YmxhbmtfaGVscGVyX2dldF92YmxhbmtfdGltZXN0YW1wX2ludGVybmFsKCkKZmxp
cHMgdG8gdG9wLW9mLWZyYW1lIGF0IHRoZSBleGFjdCBzYW1lIHRpbWUgdGhhbiB3aGVuIHRoZSBo
dyB2YmxhbmsKY291bnRlciBmbGlwcy4gT3IgYXQgbGVhc3QgSSdtIG5vdCBzZWVpbmcgd2hlcmUg
d2UgY29ycmVjdCB0aGVtIGJvdGgKdG9nZXRoZXIuCgo+ID4gQnV0IHlvdXIgcG9pbnQgYWJvdmUg
dGhhdCB0aGUgaHcgbWlnaHQgcmVzZXQgdGhlIGNvdW50ZXIgYWdhaW4gaXMgYWxzbwo+ID4gdmFs
aWQuIEknbSBhc3N1bWluZyB3aGF0IHlvdSdyZSB3b3JyaWVkIGFib3V0IGlzIHRoYXQgd2UgZmly
c3QgZG8gYQo+ID4gX3Jlc3RvcmUgKGFuZCB0aGUgaHcgdmJsYW5rIGNvdW50ZXIgaGFzbid0IGJl
ZW4gdHJhc2hlZCB5ZXQpLCBhbmQgdGhlbiBpbgo+ID4gdGhlIHNhbWUgZnJhbWUgd2UgZG8gYW5v
dGhlciByZXN0b3JlLCBidXQgbm93IHRoZSBodyBmcmFtZSBjb3VudGVyIGhhcwo+ID4gYmVlbiB0
cmFzaGUsIGFuZCB3ZSBuZWVkIHRvIHVwZGF0ZSBpdD8KPgo+IFllYWgsIGFsdGhvdWdoIHRoZSBw
cmUtdHJhc2hpbmcgX3Jlc3RvcmUgY291bGQgYWxzbyBqdXN0IGJlCj4gYSB2YmxhbmsgaXJxIEkg
dGhpbmsuCj4KPiA+Cj4gPiA+IEFub3RoZXIgaWRlYSB0aGF0IGNhbWUgdG8gbWUgbm93IGlzIHRo
YXQgbWF5YmUgd2Ugc2hvdWxkIGFjdHVhbGx5IGp1c3QKPiA+ID4gY2hlY2sgaWYgdGhlIGN1cnJl
bnQgaHcgZnJhbWUgY291bnRlciB2YWx1ZSBsb29rcyBzYW5lLCBhcyBpbiBzb21ldGhpbmcKPiA+
ID4gbGlrZToKPiA+ID4KPiA+ID4gZGlmZl9od19jb3VudGVyID0gY3VycmVudF9od19jb3VudGVy
LXN0b3JlZF9od19jb3VudGVyCj4gPiA+IGRpZmZfdHMgPSAoY3VycmVudF90cy1zdG9yZWRfdHMp
L2ZyYW1lZHVyCj4gPiA+Cj4gPiA+IGlmIChkaWZmX2h3X2NvdW50ZXIgfj0gZGlmZl90cykKPiA+
ID4gICAgIGRpZmYgPSBkaWZmX2h3X2NvdW50ZXI7Cj4gPiA+IGVsc2UKPiA+ID4gICAgIGRpZmYg
PSBkaWZmX3RzOwo+ID4gPgo+ID4gPiBhbmQgaWYgdGhleSBzZWVtIHRvIG1hdGNoIHRoZW4ganVz
dCBrZWVwIHRydXN0aW5nIHRoZSBodyBjb3VudGVyLgo+ID4gPiBTbyBvbmx5IGlmIHRoZXJlJ3Mg
YSBzaWduaWZpY2FudCBkaWZmZXJlbmNlIHdvdWxkIHdlIGRpc3JlZ2FyZAo+ID4gPiB0aGUgZGlm
ZiBvZiB0aGUgaHcgY291bnRlciBhbmQgaW5zdGVhZCB1c2UgdGhlIGRpZmYgYmFzZWQgb24gdGhl
Cj4gPiA+IHRpbWVzdGFtcHMuIE5vdCBzdXJlIHdoYXQgInNpZ25pZmljYW50IiBpcyB0aG91Z2g7
IE9uZSBmcmFtZSwgdHdvCj4gPiA+IGZyYW1lcz8KPiA+Cj4gPiBIbSwgYW5vdGhlciBpZGVhOiBU
aGUgb25seSBwb2ludCB3aGVyZSB3ZSBjYW4gdHJ1c3QgdGhlIGVudGlyZSBodyBjb3VudGVyCj4g
PiArIHRpbWVzdGFtcCBzYW1wbGluZyBpcyB3aGVuIHRoZSBpcnEgaGFwcGVucy4gQmVjYXVzZSB0
aGVuIHdlIGtub3cgdGhlCj4gPiBkcml2ZXIgd2lsbCBoYXZlIHByb3Blcmx5IGNvcnJlY3RlZCBm
b3IgYW55IGh3IG9kZGl0aWVzIChsaWtlIGh3IGNvdW50ZXIKPiA+IGZsaXBwaW5nIG5vdCBhdCB0
b3Atb2YtZnJhbWUsIGxpa2UgdGhlIGNvcmUgZXhwZWN0cykuCj4KPiBpOTE1IGF0IGxlYXN0IGdp
dmVzIG91dCBjb3JyZWN0IGRhdGEgcmVnYXJkbGVzcyBvZiB3aGVuIHlvdSBzYW1wbGUKPiBpdC4g
V2VsbCwgZXhjZXB0IGZvciB0aGUgY2FzZXMgd2hlcmUgdGhlIGh3IGNvdW50ZXIgZ2V0cyB0cmFz
aGVkLAo+IGluIHdoaWNoIGNhc2UgdGhlIGh3IGNvdW50ZXIgaXMgZ2FyYmFnZSAod2hlbiBjb21w
YXJlZCB3aXRoIC5sYXN0KQo+IGJ1dCB0aGUgdGltZXN0YW1wIGlzIHN0aWxsIGNvcnJlY3QuCgpI
bSB3aGVyZS9ob3cgZG8gd2UgaGFuZGxlIHRoaXM/IE1heWJlIEknbSBqdXN0IG91dCBvZiBkYXRl
IHdpdGggaG93IGl0CmFsbCB3b3JrcyBub3dhZGF5cy4KCj4gPiBTbyB3aGF0IGlmIF9yZXN0b3Jl
IGFsd2F5cyBnb2VzIGJhY2sgdG8gdGhlIGxhc3Qgc3VjaCB0cnVzdGVkIGh3IGNvdW50ZXIKPiA+
IGZvciBjb21wdXRpbmcgdGhlIGZyYW1lIGNvdW50ZXIgZGlmZiBhbmQgYWxsIHRoYXQgc3R1ZmY/
IFRoYXQgd2F5IGlmIHdlCj4gPiBoYXZlIGEgYnVuY2ggb2YgX3Jlc3RvcmUgd2l0aCBpbmNvc2lz
dGVuIGh3IHZibGFuayBjb3VudGVyLCB3ZSB3aWxsIGEpCj4gPiBvbmx5IHRha2UgdGhlIGxhc3Qg
b25lIChmaXhlcyB0aGUgYnVnIHlvdSdyZSB0cnlpbmcgdG8gZml4KSBiKSBzdGlsbCB1c2UKPiA+
IHRoZSBzYW1lIGxhc3QgdHJ1c3RlZCBiYXNlbGluZSBmb3IgY29tcHV0YXRpb25zIChhZGRyZXNz
ZXMgdGhlIHJhY2UgSSdtCj4gPiBzZWVpbmcpLgo+ID4KPiA+IE9yIGRvZXMgdGhpcyBub3Qgd29y
az8KPgo+IEkgZG9uJ3QgdGhpbmsgSSByZWFsbHkgdW5kZXJzdGFuZCB3aGF0IHlvdSdyZSBzdWdn
ZXN0aW5nIGhlcmUuCj4gX3Jlc3RvcmUgaXMgYWxyZWFkeSB1c2luZyB0aGUgbGFzdCB0cnVzdGVk
IGRhdGEgKHRoZSBzdG9yZWQKPiB0aW1lc3RhbXAgKyAubGFzdCkuCj4KPiBTbyB0aGUgb25lIHRo
aW5nIF9yZXN0b3JlIHdpbGwgaGF2ZSB0byB1cGRhdGUgaXMgLmxhc3QuCj4gSSB0aGluayBpdCBj
YW4gZWl0aGVyIGRvIHdoYXQgaXQgZG9lcyBub3cgYW5kIHNldCAubGFzdAo+IHRvIHRoZSBjdXJy
ZW50IGh3IGNvdW50ZXIgdmFsdWUgKyB1cGRhdGUgdGhlIHRpbWVzdGFtcAo+IHRvIG1hdGNoLCBv
ciBpdCBjb3VsZCBwZXJoYXBzIGFkanVzdCB0aGUgc3RvcmVkIC5sYXN0Cj4gc3VjaCB0aGF0IHRo
ZSBhbHJlYWR5IHN0b3JlZCB0aW1lc3RhbXAgYW5kIHRoZSB1cGRhdGVkCj4gLmxhc3QgbWF0Y2gg
dXAuIEJ1dCBJIHRoaW5rIGJvdGggb2YgdGhvc2Ugb3B0aW9ucyBoYXZlCj4gdGhlIHNhbWUgbGV2
ZWwgb3IgaW5hY2N1cmFjeSBzaW5jZSBib3RoIHdvdWxkIHN0aWxsIGRvCj4gdGhlIHNhbWUgdHNf
ZGlmZi0+aHdfY291bnRlcl9kaWZmIHByZWRpY3Rpb24uCj4KPiA+Cj4gPiBJdCBkb2VzIGNvbXBs
aWNhdGUgdGhlIGNvZGUgYSBiaXQsIGJlY2F1c2Ugd2UnZCBuZWVkIHRvIHN0b3JlIHRoZQo+ID4g
Y291bnQvdGltZXN0YW1wIGluZm9ybWF0aW9uIGZyb20gX3Jlc3RvcmUgb3V0c2lkZSBvZiB0aGUg
dXN1YWwgdmJsYW5rIHRzCj4gPiBhcnJheS4gQnV0IEkgdGhpbmsgdGhhdCBhZGRyZXNzZXMgZXZl
cnl0aGluZy4KPgo+IEhtbS4gU28gcmVzdG9yZSB3b3VsZCBzdG9yZSB0aGlzIGV4dHJhIGluZm9y
bWF0aW9uCj4gc29tZXdoZXJlIGVsc2UsIGFuZCBub3QgdXBkYXRlIHRoZSBub3JtYWwgc3R1ZmYg
YXQgYWxsPwo+IFdoYXQgZXhhY3RseSB3b3VsZCB3ZSBkbyB3aXRoIHRoYXQgZXh0cmEgZGF0YT8K
CkhtIEkgZ3Vlc3MgSSBkaWRuJ3QgdGhpbmsgdGhpcyB0aHJvdWdoLiBCdXQgdGhlIGlkZWEgSSBo
YWQgd2FzOgotIF9yZXN0b3JlIGFsd2F5cyByZWNvbXB1dGVzIGJhY2sgZnJvbSB0aGUgbGFzCmRy
bV9jcnRjX2hhbmRsX3ZibGFuay1zdG9yZWQgdGltZXN0YW1wLgotIHRoZSBmaXJzdCBkcm1fY3J0
Y19oYW5kbGVfdmJsYW5rIGJha2VzIGluIGFueSBjb3JyZWN0aW9ucyB0aGF0Cl9yZXN0b3JlIGhh
cyBwcmVwYXJlZCBtZWFud2hpbGUKLSBzYW1lIGFwcGxpZXMgdG8gYWxsIHRoZSBzYW1wbGluZyBm
dW5jdGlvbnMgd2UgbWlnaHQgbG9vayBhdCBsYXN0ZXMKdGltZXN0YW1wcy9jb3VudGVyIHZhbHVl
cy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
