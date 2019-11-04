Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0FDEE551
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 17:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BCC6E622;
	Mon,  4 Nov 2019 16:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E7A6E61F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 16:57:48 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id t26so12759312wmi.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 08:57:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=VAliMdV9Fdczuha2bJKMxJDT7qOFHHNH6gNdM44i0qU=;
 b=jDbxXzd0qOaV8BN7Bejb2Mwf/Sz5eyOhInjSH9xOq9H6p9FwMzoDxst/PKfWuuFuen
 Em328wbriUHoilp3zHu1OjvPYa3J7TXx074A+7RQVVIbMf3gM8P8DbxmaWYQrZJpFzSn
 GfOOy8Qa6guXATAlXrFGgwd8AO7gzoAB4/c9G88A9e9ihDTXcefjsQ2O0Qt2baB+PpIM
 SiPJ1krVGZy7iR9NuTN0J/aknw/xAHeXB6bnwR6+ly4TOm3oSaDLowpV2gThKqgWUgd/
 ulTcbXWSqbc+a2SRxe7vu9lHRI8O7vhPw4EldC/RAxhVWtCoxyaw9TgfCt02RBhXCk8W
 jOVA==
X-Gm-Message-State: APjAAAW8aPhQ5NSkLKow9+bPk7DhI9cSObPnRQ8aguyvlSDzPTrfdk2m
 wm2QHCqWZuY9pIX3Y7l9R3LALA==
X-Google-Smtp-Source: APXvYqwZZ+E3+UHHjykHpaF1nJBgvLZ2qvjZaEiwV8sNGWUeuZPsY92TMiCBl0oYY4BiKCy+FBjLPA==
X-Received: by 2002:a1c:2e94:: with SMTP id u142mr52433wmu.69.1572886667346;
 Mon, 04 Nov 2019 08:57:47 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id a16sm25010019wmd.11.2019.11.04.08.57.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 08:57:46 -0800 (PST)
Date: Mon, 4 Nov 2019 17:57:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <20191104165744.GI10326@phenom.ffwll.local>
References: <20191023144953.28190-1-daniel.vetter@ffwll.ch>
 <20191023144953.28190-2-daniel.vetter@ffwll.ch>
 <20191024103552.GB2825247@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024103552.GB2825247@ulmo>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VAliMdV9Fdczuha2bJKMxJDT7qOFHHNH6gNdM44i0qU=;
 b=begU7rKeWpJi7rnoMrQyyW0fy4sHpwYdvdelZfEEqIML/6nH64WZpOhPQJOELBLjA7
 Y63TWA/2e9R/YabePnObrg29MN0kD3WBpQHuJ7cLW4YgsraVSgEXbHqEffqLLUYc87lF
 ajjBRKbc9+o94CgPwxkasmPcXVBNezHmnjWg4=
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/todo: Add entry to remove
 load/unload hooks
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMTI6MzU6NTJQTSArMDIwMCwgVGhpZXJyeSBSZWRpbmcg
d3JvdGU6Cj4gT24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMDQ6NDk6NTNQTSArMDIwMCwgRGFuaWVs
IFZldHRlciB3cm90ZToKPiA+IFRoZXkncmUgbWlkbGF5ZXIsIGJyb2tlbiwgYW5kIGJlY2F1c2Ug
b2YgdGhlIG9sZCBndW5rLCB3ZSBjYW4ndCBmaXgKPiA+IHRoZW0uIEZvciBleGFtcGxlcyBzZWUg
dGhlIHZhcmlvdXMgY2hlY2tzIGluIGRybV9tb2RlX29iamVjdC5jIGFnYWluc3QKPiA+IGRldi0+
cmVnaXN0ZXJlZCwgd2hpY2ggY2Fubm90IGJlIGVuZm9yY2VkIGlmIHRoZSBkcml2ZXIgc3RpbGwg
dXNlcyB0aGUKPiA+IGxvYWQgaG9vay4KPiA+IAo+ID4gVW5mb3J0dW5hdGVseSBvdXIgYmlnZ2Vz
dCBkcml2ZXIgc3RpbGwgdXNlcyBsb2FkL3VubG9hZCwgc28gdGhpcyB3b3VsZAo+ID4gYmUgcmVh
bGx5IGdyZWF0IHRvIGdldCBmaXhlZC4KPiA+IAo+ID4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFu
ZGVyLmRldWNoZXJAYW1kLmNvbT4KPiA+IENjOiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxh
bmRAYW1kLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgfCAx
NyArKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCsp
Cj4gCj4gUmVtaW5kcyBtZSB0aGF0IEkgbmVlZCB0byBzdGlsbCBkbyB0aGF0IGZvciBUZWdyYToK
PiAKPiBSZXZpZXdlZC1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KCkJv
dGggcGF0Y2hlcyBhcHBsaWVkLCB0aGFua3MgZm9yIHRha2luZyBhIGxvb2suCi1EYW5pZWwKLS0g
CkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
