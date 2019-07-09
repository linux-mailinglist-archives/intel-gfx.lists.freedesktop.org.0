Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A363363
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAA489F5F;
	Tue,  9 Jul 2019 09:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2042689F5F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:26:59 +0000 (UTC)
Received: from 85-76-4-132-nat.elisa-mobile.fi ([85.76.4.132]
 helo=[192.168.43.194])
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <tjaalton@ubuntu.com>)
 id 1hkmOn-00025W-79; Tue, 09 Jul 2019 09:26:57 +0000
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190628213921.16879-1-jose.souza@intel.com>
 <20190628213921.16879-2-jose.souza@intel.com>
 <0129038bba889c74e6164913d45b78b16c42482f.camel@intel.com>
 <a22bb734-1400-325e-6aff-693a6337aab2@ubuntu.com>
 <9f528f4dce800a23810f28eeb805a85d09159226.camel@intel.com>
From: Timo Aaltonen <tjaalton@ubuntu.com>
Openpgp: preference=signencrypt
Autocrypt: addr=tjaalton@ubuntu.com; prefer-encrypt=mutual; keydata=
 mQINBE633FoBEACvWuBBzzRzV6ReD0xRjw1Fv5118xX/ijrtmN/ZZ4Ii/nVPvXHcVwugwop4
 Taaj5uGuAT9EnveO4Uq1t64PvouaqqWVCpYIRVTPulS42eI6DwH5GrmXfGEe7JjJHxYldpuj
 XNvbr7n72cBdT372a0SydvIx3xN4pfR0k1QPfiLTUMWDkCNlxjND+s8NfCCyQ5e4yGgAO9S8
 ygI68Q/F8EEaa9hcfhIIcu2QwnvGxJuUYaN17pqoau4j+WKsmKImXiWdO2nXF+uB/3x90eKz
 t9SUI9PBTZuo9CQr6rfdaAcGfKjwQmFk9enG4RjNI6WGweuITqS0NQW4Yi7sMBTOqvTMKJ81
 LQR6T1to9Cf5OcZqSA6Uz+m5y1Yi4htgEQ1PzBfcLShno0SXrp1ctcUDv37MZpz3QJ5UxBiW
 1EatWmAcFEeCd6qX6wIAR514kxZYNN/xZvwAq7hJucSawZR9ccMJRf9LzwNmS4uyBMpjfeUq
 R6Rw9RDKLn9LvpKwi9+t/RXgc0u1JWIarSuL+SWWecjlMInWPbuqXMkumAD8NDd6UTU9u/D2
 466qCrc69pGMzaHNk5aCPAlZz7Pnqvkz5EBUvKEanOiOdOqdfYS65v5xWKCnxKUQf3/+Q/R4
 IJwdaLnxTqdNriqwtByTgVbwBWF8o2rqyBqjmPJE6j/gSMeTwwARAQABtCNUaW1vIEFhbHRv
 bmVuIDx0amFhbHRvbkB1YnVudHUuY29tPokCOwQTAQIAJQIbAwYLCQgHAwIGFQgCCQoLBBYC
 AwECHgECF4AFAk69W5ICGQEACgkQy3AxZaiJhNy6wQ/9HN95GPVtSeMT6rOnMRnLhzTDm3P5
 a8kVOwQ3j2oJdQfHw8nyhAqLsZIiO6d44Rj1bOnE72Ky8oz90+ilpvmukqTYaa6AaniXbAdO
 aC8NHCtA1g24fVIOC4ZdSID+vCefx6NwzfZeqGMe3GNSI4BBiut350ddKTlESyo7foggXNYJ
 1X3zQHpQT2DqsmqvXbVwTrYaiZ5UjMOf9kCiY5HEDUR4bRoIRYsSzcK11wOKvxRxu7LVWaM1
 brcI+FkTVcXzZ39l8F3sOb4pgh71/XzBXawpHXnE1dOAno27we9dV3cCKYyfIstNcHut7AHg
 ATLH0fCvz8lSSl7L6QzdqGchxdRbG8Tvwbxn2kIJc5suCYBFdbwRqIk6FHNS0CcBvkdhc03U
 Tmn0EIPa0Ho2UFlHLgpEAjziicu3untPcjjbe4vdU2YWUKXPmDLvTz0sgC5LS7UeWJkHtJdL
 MMS2N1R4gnusjeeyrWDZpTONcoTZ8UK6A4qWPKvYA6h7lLDOs1+TAne85sA+WgOCwBXpR9Az
 FB5+uxW8FQ+HNTJY9hn7JWi3MiF3y0/2UOvT7EVSls4pLL9z4a4GJvOrnOYE/bIlLqkpbfIN
 sttlUTRyo7QlHNYF55odp0Ei+I6loevGa7omxVeAsBuRtabEjCuOAc15UeuTHHixkMCI7Mkq
 epguRSm5Ag0ETrfcWgEQAKEpa/OpsQlpBOabVtOSlLnMwW+03/TjQcz4++8dxF/r5g/mQ3Jc
 P/rAnMdCa6BqoZ6TUJ083d4/tPhQpDh0uYDZyJbVh0ShWLZS0dO3Zn4kuh7Df68Znivy9pN5
 JmWaVhrq24P7ZdgfUR7GRLxwLwAXAASNEDaeSE6iovLIkqZFA4aX4bnM6bYtISAGIXbh1i6H
 6SMTdITDVn0X/5Jg4WOkYEHtTYP8Asuqn5mU9mMeGnaM97WTsTFzoPaky8uS8PeXIZ9TyaRd
 ujoGdRzxvs8QEoNWE4yAgRgJjIHydX2P6plL864nUrJoN/pgGXVE/SlNnYZ1N71zx6PqqJnx
 9MQgHstcH/T2rI2IVbhG//GcjU9Gghk3CSqTarinx+OWYM6EJTymZcNSQyjizxTDb/copfUL
 +rpXy4KLwJrTP4kLHlUozFCBn3PA+kS29riVXehShi55PzcWobyrdk/9vuuJhCabaZjuXfcq
 ALpjDBo+nh5OKk5bsCKaNuaLuWN2cVpZdh2mAoev0GoXCCqLr/4kUKB7+C3Rkq0TeP1petAR
 JmIk/xQKU2JkXjXPGYnmK++F3kOUMqS1WCZ/b2uymyJUetaDzt1ocF4wOTckOZ9KTH6Zzqtv
 xWK3Pc58zjPu5gpJuI5vUoY+/uKgkhic4f+xmjfYSwrleZdu6qQcN/f/ABEBAAGJAh8EGAEC
 AAkFAk633FoCGwwACgkQy3AxZaiJhNw6nw/+Jtznt4xhWBVx7EOjpD8ca4OSQy62SmM58ebf
 yoc3p6cGcXbTUBcKHLDkaoUdeYAUhLM3f5wV4kdbDiIltagkR8kTmslvVv7jMQQWSyudedsI
 yQJxSIVG4+7rvhgVt9sE06/1rE4pmYlhp8kmE6kxKAJ1WbDcNAi0ZYix8Mj3gr9oxqCYKVPW
 R6CM/UiSxN6LWU5gJYSvcFQQGIPQWMbLv6yPdsSj0sW3KpsVBO7O+LcPE5KFLgyi9bQs6iZI
 dzbQFwE+P2Vp+fOUUb/5fvww1bxQJgF7lbWI1xbYmcvLvcIj2DBwzN4uGaXDMunyKy1CHsMT
 AkaN9oVSh6Cu055uV526j57VgDLOipbh/I3mgYuT2bJBRe/JBrnlRLuzANVSzbg9OhIb1twr
 85SZPUto1l6AzkeHo6whvd9N+R7mOiSIeJ+56kkzU/Q5ImBbrhMlJObtQK4TAytGmlS5wxNo
 i8TZEXEL2iR/i37NGGeorDjkiSCdMdjXJNQTSKVekL+SMCWq2CnSF9qHMoWyUUNEDIMkQ9Ys
 9GPdN3KguodoT5tYomp+0N/F/mb39oF9prACn0mhh1Qy+rtUJXS1JXjbyMQKdiiR+YOXwcvL
 uVNy3xyz880fGsDp04cGSB2/wNccR+xcxTdj6e9FqhfeCHZC2kSBFtvfNcXBnnpGNDZSUVM=
Message-ID: <7a097f16-b4c9-a907-8d25-0502a4d06ef6@ubuntu.com>
Date: Tue, 9 Jul 2019 12:26:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9f528f4dce800a23810f28eeb805a85d09159226.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enable hotplug retry
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMi43LjIwMTkgMjMuNDEsIFNvdXphLCBKb3NlIHdyb3RlOgo+IE9uIFR1ZSwgMjAxOS0wNy0w
MiBhdCAyMzoyOSArMDMwMCwgVGltbyBBYWx0b25lbiB3cm90ZToKPj4gT24gMi43LjIwMTkgMjIu
NTQsIFNvdXphLCBKb3NlIHdyb3RlOgo+Pj4gSGVyZSBhIGRtZXNnIG91dHB1dCBvZiB0aGlzIHBh
dGNoIHdvcmtpbmcgaW4gYSB1bnBvd2VyZWQgdHlwZS1jCj4+PiBkb25nbGU6Cj4+PiBodHRwczov
L2dpc3QuZ2l0aHViLmNvbS96ZWhvcnRpZ296YS85M2M1NGIwM2ZiNjUyMzdjYzFhMmUxOTNhY2Vm
NjFhOAo+Pj4KPj4+IFdpdGggdGhlIGxhdGVzdCB0eXBlLWMgcGF0Y2hlcyBmcm9tIEltcmUgaXQg
aXMgYmVjb21pbmcgcmVhbGx5IGhhcmQKPj4+IHRvCj4+PiByZXByb2R1Y2UgdGhpcyBidXQgaXMg
c3RpbGwgcG9zc2libGUsIGFsc28gbG9va3MgbGlrZSBkdWUgc29tZQo+Pj4gaW50ZXJuYWwKPj4+
IGVycm9yIG9uIHRoZSBkb25nbGUgaXQgYmVpbmcgcmUtZGlzY292ZXJlZCBieSBVU0Igc3ViLXN5
c3RlbS4KPj4+Cj4+PiBJIGFkZGVkIHRoaXMgdG8gdGhlIHBhdGNoZXMgYmVsbG93IGhhdmUgbW9y
ZSBsb2cgaW5mb3JtYXRpb246Cj4+PiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS96ZWhvcnRpZ296
YS9iYWVjYWJlYjcwOTdiOTMyMjcyM2I2Y2FmNWE5Y2VkNQo+Pj4gTGV0IG1lIGtub3cgaWYgeW91
IHRoaW5rIHRoaXMgb3Igc29tZXRoaW5nIHNpbWlsYXIgc2hvdWxkIGJlCj4+PiBzcXVhc2hlZAo+
Pj4gdG8gdGhpcyBwYXRjaCwgSSB0aGluayBpdCBpcyBub3QgbmVjZXNzYXJ5Lgo+Pgo+PiBGV0lX
LCB3ZSd2ZSB0ZXN0ZWQgdGhlc2Ugb24gYSBXSEwgd2hpY2ggaXMgc3VmZmVyaW5nIGZyb20gSERN
SSB1bnBsdWcKPj4gc3RpbGwgc2hvd2luZyB0aGUgZGlzcGxheSBjb25uZWN0ZWQsIGFuZCBpdCdz
IHdvcmtpbmcgZmluZSBub3cuCj4+Cj4+Cj4gCj4gVGhhbmtzLCBJIHdpbGwgYWRkIHlvdXI6Cj4g
Cj4gVGVzdGVkLWJ5OiBUaW1vIEFhbHRvbmVuIDx0amFhbHRvbkB1YnVudHUuY29tPgoKVGhhdCdz
IGZpbmUuIFdoZW4gY2FuIHdlIGV4cGVjdCB0aGVzZSB0byBsYW5kIG9uIGRpbnE/CgoKCi0tIAp0
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
