Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2673B852E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 16:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7D66E9ED;
	Wed, 30 Jun 2021 14:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 929B56E9ED;
 Wed, 30 Jun 2021 14:44:26 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id g4so2686096qkl.1;
 Wed, 30 Jun 2021 07:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2et4KT8L7jP1mpy1oRnNKAxEFKAA245RyizNmHQJu0A=;
 b=ni5kdzxQso5O4x03O43MLQ5luCngKEGnziDGHOwB0BDqj2w8T0yFdCUnfEBkT4LhU5
 3Co387LUv4yL5KexqbyNYo9fqQAKxKW+eSWS2hXAtc90q06oIC0oU1chVz9C4lSy/lLF
 /OQMjJHw+qbNSH2jgo99F3czxlceRMq3FZczu67/wzqCYI2l2eNTsoyzQ/Ka7BDShFw/
 KCUkEcOmWzAkFxn73PqFcRzR1lU9HsFozhbKhiuMnHVQ2tlDtoLcyqjWPn9W5OToIJAT
 xxQR1aNiVvNRan1AacNShdz6qjDx1O/gdVc5+tMDkF5Og6nGNcXLk+booiS89NkiUMZO
 Rocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2et4KT8L7jP1mpy1oRnNKAxEFKAA245RyizNmHQJu0A=;
 b=LgNOL+oW2pgREMzrc76irPvu90QbY6bML73/unIvpkMZsrco5utS3BP152A2h2SKh+
 va/mfm56FtNsJ5bz8AbC2hRK6bWBVLfAotk7fgkfzuImbgVlebPiFlWBEwzbn1bEb7N3
 Y0ZHKghmqzxuP4C2U4KJLMYTeUHJE+OMoA6a9345MFb/9iI6GDyz3aiXZZjRkppWWKng
 MK2HEzD2upRDanrIqDdYnNug6kLYJ3unWSixOvisg5+wev6jI+wraHtHiZMNPptxOngo
 Aksq4BMDs5+A2DrQ/MNuGbdm0g7fAhrTjMWwi7WNj8qvxRoQcvN0mC5N0qDMgQpArkh3
 Mrlg==
X-Gm-Message-State: AOAM533KMsuHPb1I3ZHh+jjNVQGefIMl2dTKBn0poR/idfWUK2xQ2fz6
 OWBRDjpRZIu4cZz6liLJ8VF5b+URQ1OVLLXlU5E=
X-Google-Smtp-Source: ABdhPJxiK8zCjwPamhLlfl78bsXkHxIX+9Bmr6sCiaks76JUqJN6r0IHzYOIK1vmUJVT9klXzcEEbEFUWmdzUq/ush0=
X-Received: by 2002:a37:b1c3:: with SMTP id a186mr37560568qkf.17.1625064265801; 
 Wed, 30 Jun 2021 07:44:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
 <20210624193045.5087-3-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624193045.5087-3-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Jun 2021 15:43:59 +0100
Message-ID: <CAM0jSHNDn3Zo3FCeH2LVbnJ1TS+sOuV+Hi=Wdk+yGdkMBQVz1w@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/ttm,
 drm/i915: Update ttm_move_memcpy for async use
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNCBKdW4gMjAyMSBhdCAyMDozMSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoZSBidWZmZXIgb2JqZWN0IGFy
Z3VtZW50IHRvIHR0bV9tb3ZlX21lbWNweSB3YXMgb25seSB1c2VkIHRvCj4gZGV0ZXJtaW5lIHdo
ZXRoZXIgdGhlIGRlc3RpbmF0aW9uIG1lbW9yeSBzaG91bGQgYmUgY2xlYXJlZCBvbmx5Cj4gb3Ig
d2hldGhlciB3ZSBzaG91bGQgY29weSBkYXRhLiBSZXBsYWNlIGl0IHdpdGggYSAiY2xlYXIiIGJv
b2wsIGFuZAo+IHVwZGF0ZSB0aGUgY2FsbGVycy4KPgo+IFRoZSBpbnRlbnRpb24gaGVyZSBpcyB0
byBiZSBhYmxlIHRvIHVzZSB0dG1fbW92ZV9tZW1jcHkoKSBhc3luYyB1bmRlcgo+IGEgZG1hLWZl
bmNlIGFzIGEgZmFsbGJhY2sgaWYgYW4gYWNjZWxlcmF0ZWQgYmxpdCBmYWlscyBpbiBhIHNlY3Vy
aXR5LQo+IGNyaXRpY2FsIHBhdGggd2hlcmUgZGF0YSBtaWdodCBsZWFrIGlmIHRoZSBibGl0IGlz
IG5vdCBwcm9wZXJseQo+IHBlcmZvcm1lZC4gRm9yIHRoYXQgcHVycG9zZSB0aGUgYm8gaXMgYW4g
dW5zdWl0YWJsZSBhcmd1bWVudCBzaW5jZQo+IGl0cyByZWxldmFudCBtZW1iZXJzIG1pZ2h0IGFs
cmVhZHkgaGF2ZSBjaGFuZ2VkIGF0IGNhbGwgdGltZS4KPgo+IEZpbmFsbHksIHVwZGF0ZSB0aGUg
dHRtX21vdmVfbWVtY3B5IGtlcm5lbGRvYyB0aGF0IHNlZW1zIHRvIGhhdmUKPiBlbmRlZCB1cCB3
aXRoIGEgc3RhbGUgdmVyc2lvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
