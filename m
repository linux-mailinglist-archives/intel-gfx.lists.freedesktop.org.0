Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D586327F9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E5B10E300;
	Mon, 21 Nov 2022 15:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000F610E18F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 04:30:16 +0000 (UTC)
Received: by mail-vs1-xe36.google.com with SMTP id l190so12576807vsc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Nov 2022 20:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=s1S67zBXqmoumGpv61MX8UPvTPxxW4Sjl9aesuRqyck=;
 b=cHeHu+FTXHZesne16clnJWFEFGPH6FQQNR96RX1ZU9QdTkOtVgvBfi/dy3c/oDzWfM
 e7Ynf1hzPMHMPp/a7BuIAw0KGsWFe8ubLT+fEoB3gTkMOKNoIvXB0v6VnnBfaeFhxx9l
 G7FyHP87GhavZsf1MdZCLBjosjMafPattnf7h9zrC7IOF4jPSFhkPAUqTFsRiQVrf9ai
 w4L3WNfkM3ZOh3oeSic1LkS8/TvqU22vSWFy2vCtfWS7qoD4Sv+lYrGEuAyxqX4tFeps
 iyti0XQRCa1bcE940T+8/m6JXV0Dwzxsn8t26h2rZhDRTsXbLC+Q8W24zlDGCFfQO9NU
 oZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=s1S67zBXqmoumGpv61MX8UPvTPxxW4Sjl9aesuRqyck=;
 b=tHhv6iiBGzUr9EG60ay9Hhqzhw9fukjcjlHULgHbzuFAWTeC3yXT/BwU9hlsOOjlQ0
 nvR/Y9lvNhYwnG45sONf9BUQ2LfrLmXRbrR9KpZBJLwm/ZDznNVr2Z6aB3pKa7KkX/I6
 uu0yQFWF5t5dRzBqzQiYXjzjFuliWAkpLf+Aeprr3Rgx6frKk8J43tUgG9KkJPmukh6l
 8kuWBLbVCxPq5tEMAZ/1loTbCGxUrnkrAULvmMN5p+R6z8qN31N0eW/iErXats8acJOa
 ULfwN9fdOyUmDHNfVsJ26yRXAqUV43cHt7qrbEM7kjBV3zYvry7LPSxLEDO9to27B89S
 0LfQ==
X-Gm-Message-State: ACrzQf1BCj7huusDZ9f+re5BO59qkqGZYMhFd70PdObH4I+dvHMoCamQ
 EIFt0KTTM/60awx/hW03ZW07i/ZXb6N4ll6TTxy8ag==
X-Google-Smtp-Source: AMsMyM6Zcwdy5g6+MnK649Vl7DV49R/RSyb0+53CmcJyrUzxu1Aj+ztWwRDeZ9mKt5Ce3C9lv0wHQMUM41Pn36RWvLs=
X-Received: by 2002:a67:f3c5:0:b0:3aa:329e:18b5 with SMTP id
 j5-20020a67f3c5000000b003aa329e18b5mr29936784vsn.18.1667881815601; Mon, 07
 Nov 2022 20:30:15 -0800 (PST)
MIME-Version: 1.0
References: <20221103162302.4ba62d72@maurocar-mobl2>
In-Reply-To: <20221103162302.4ba62d72@maurocar-mobl2>
From: David Gow <davidgow@google.com>
Date: Tue, 8 Nov 2022 12:30:03 +0800
Message-ID: <CABVgOSnzMrwnORRqq345AqBUd7=tH1G4ayzZyEo_cYrmE49POA@mail.gmail.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="0000000000002b570105ecedff23"
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:23 +0000
Subject: Re: [Intel-gfx] KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8]
 drm/i915: check if current->mm is not NULL
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000002b570105ecedff23
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 3, 2022 at 11:23 PM Mauro Carvalho Chehab
<mauro.chehab@linux.intel.com> wrote:
>
> Hi,
>
> I'm facing a couple of issues when testing KUnit with the i915 driver.
>
> The DRM subsystem and the i915 driver has, for a long time, his own
> way to do unit tests, which seems to be added before KUnit.
>
> I'm now checking if it is worth start using KUnit at i915. So, I wrote
> a RFC with some patches adding support for the tests we have to be
> reported using Kernel TAP and KUnit.

Thanks very much for looking into this, and sorry for the delayed
response (I've been out sick).

I think Daniel has answered most of your questions (thanks, Daniel),
and I agree with pretty much everything he's said.

In short, I think that it'd be great to have the i915 tests use KUnit
where appropriate, and even where KUnit isn't the ideal tool, using
KTAP as a result format would be great.
I definitely think that there's a whole bunch of areas of i915 for
which KUnit makes sense: the more hardware independent unit tests
(things like swizzling/tiling, maybe some command-buffer creation /
validation, "utility" functions generally) are an obvious option. If
KUnit isn't working for those sorts of tests, that's clearly a
deficiency in KUnit that we'll want to rectify (though it might take
some time to do so).

The more hardware-specific stuff probably isn't as good a fit for
KUnit, but if using KUnit is the easiest way to do test
management/assertion macros/KTAP output/etc., then it may be worth
using whatever parts of it make sense. I'd prefer it if any tests
which depend strongly on specific hardware were marked as such, and
maybe lived under a different Kconfig option (which might not be
auto-enabled by KUNIT_ALL_TESTS). Though as long as the tests are
skipped if the hardware isn't present (which seems to be the case from
running them under qemu), it's not a real problem to have them. It's
not something we plan to "officially support", though, so if the
requirements of hardware-specific tests and more traditional unit
tests conflict, KUnit will lean towards supporting the
non-hardware-specific ones.

>
> There are basically 3 groups of tests there:
>
> - mock tests - check i915 hardware-independent logic;
> - live tests - run some hardware-specific tests;
> - perf tests - check perf support - also hardware-dependent.
>
> As they depend on i915 driver, they run only on x86, with PCI
> stack enabled, but the mock tests run nicely via qemu.
>
> The live and perf tests require a real hardware. As we run them
> together with our CI, which, among other things, test module
> unload/reload and test loading i915 driver with different
> modprobe parameters, the KUnit tests should be able to run as
> a module.
>
> While testing KUnit, I noticed a couple of issues:
>
> 1. kunit.py parser is currently broken when used with modules
>
> the parser expects "TAP version xx" output, but this won't
> happen when loading the kunit test driver.
>
> Are there any plans or patches fixing this issue?
>
Yeah: this is on our to-do list to fix, hopefully pretty soon.

> 2. current->mm is not initialized
>
> Some tests do mmap(). They need the mm user context to be initialized,
> but this is not happening right now.
>
> Are there a way to properly initialize it for KUnit?
>
This is something we've hit before and don't have a good solution for
(as you've found out). I'm not an expert on the mm subsystem, so while
it's something we want to support, I don't think anyone quite knows
how yet.

As a totally wild, untested guess, you may have some luck setting
current->mm = current->active_mm, or current->mm = &init_mm?

It's definitely true that, even when loaded from modules, current->mm
won't be set as KUnit tests run in their own kthreads. Maybe setting
mm = active_mm would let us carry that context with us from the module
loader to the test...

In any case, you're not the only person to hit this issue, so it's
definitely something we'd like to work out.

> 3. there's no test filters for modules
>
> In order to be able to do proper CI automation, it is needed to
> be able to control what tests will run or not. That's specially
> interesting at development time where some tests may not apply
> or not run properly on new hardware.
>
> Are there any plans to add support for it at kunit_test_suites()
> when the driver is built as module? Ideally, the best would be to
> export a per-module filter_glob parameter on such cases.
>

Again, this is on the to-do list. It may be implemented as a global
property which affects future module loads (and might be able to be
changed via, e.g., debugfs), rather than a per-module parameter, but
we haven't designed it yet.

Alas, module support has always seen a little less love than the
built-in UML/qemu-based mode, so it does tend to lag behind a little
bit with these sort of features, and tends to be tested less well.
Hopefully we can bring it up to scratch soon.

> 4. there are actually 3 levels of tests on i915:
>         - Level 1: mock, live, perf
>         - Level 2: test group (mmap, fences, ...)
>         - Level 3: unit tests
>
> Currently, KUnit seems to have just two levels (test suite and tests).
> Are there a way to add test groups there?

The closest thing we have at the moment is "parameterised tests",
which are really designed for the case where the same test code is
being run multiple times with different inputs. It should be possible
to use this to hack a third level in (have the "parameter" be an array
of name/function-pointer pairs), and kunit.py will parse the results
correctly, as KTAP doesn't have this limitation.

The other thing you could do is to treat each "test group" as a KUnit
suite, and just prefix them with "i915_{mock,life,perf}". This isn't
ideal, but you could eventually use the test filtering to split them
up.

Ultimately, supporting more deeply nested tests is something we're not
opposed to doing in KUnit, we've just not had any need for it thus
far, so haven't really looked into how we'd design and implement it.
Now there's a potential user, we can look into it, though it's likely
to be lower-priority here, given there are workarounds.


Thanks again, and I hope that helps a bit!

Cheers,
-- David

--0000000000002b570105ecedff23
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPnwYJKoZIhvcNAQcCoIIPkDCCD4wCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggz5MIIEtjCCA56gAwIBAgIQeAMYYHb81ngUVR0WyMTzqzANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA3MjgwMDAwMDBaFw0yOTAzMTgwMDAwMDBaMFQxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSowKAYDVQQDEyFHbG9iYWxTaWduIEF0bGFz
IFIzIFNNSU1FIENBIDIwMjAwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvLe9xPU9W
dpiHLAvX7kFnaFZPuJLey7LYaMO8P/xSngB9IN73mVc7YiLov12Fekdtn5kL8PjmDBEvTYmWsuQS
6VBo3vdlqqXZ0M9eMkjcKqijrmDRleudEoPDzTumwQ18VB/3I+vbN039HIaRQ5x+NHGiPHVfk6Rx
c6KAbYceyeqqfuJEcq23vhTdium/Bf5hHqYUhuJwnBQ+dAUcFndUKMJrth6lHeoifkbw2bv81zxJ
I9cvIy516+oUekqiSFGfzAqByv41OrgLV4fLGCDH3yRh1tj7EtV3l2TngqtrDLUs5R+sWIItPa/4
AJXB1Q3nGNl2tNjVpcSn0uJ7aFPbAgMBAAGjggGKMIIBhjAOBgNVHQ8BAf8EBAMCAYYwHQYDVR0l
BBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFHzM
CmjXouseLHIb0c1dlW+N+/JjMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q+mOai97i3Ru8MHsGCCsG
AQUFBwEBBG8wbTAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmdsb2JhbHNpZ24uY29tL3Jvb3Ry
MzA7BggrBgEFBQcwAoYvaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvcm9vdC1y
My5jcnQwNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIz
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
N0A3bgltvER3q1cGraQJMEwGA1UdIARFMEMwQQYJKwYBBAGgMgEoMDQwMgYIKwYBBQUHAgEWJmh0
dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAwGA1UdEwEB/wQCMAAwgZoGCCsG
AQUFBwEBBIGNMIGKMD4GCCsGAQUFBzABhjJodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9jYS9n
c2F0bGFzcjNzbWltZWNhMjAyMDBIBggrBgEFBQcwAoY8aHR0cDovL3NlY3VyZS5nbG9iYWxzaWdu
LmNvbS9jYWNlcnQvZ3NhdGxhc3Izc21pbWVjYTIwMjAuY3J0MB8GA1UdIwQYMBaAFHzMCmjXouse
LHIb0c1dlW+N+/JjMEYGA1UdHwQ/MD0wO6A5oDeGNWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20v
Y2EvZ3NhdGxhc3Izc21pbWVjYTIwMjAuY3JsMA0GCSqGSIb3DQEBCwUAA4IBAQAxS21FdvRtCQVc
jgEj+xxSnUr0N9reJlI5J9zRiBCWGxm5yhz965IDka3XVFEbj+beJj/gyHoxbaTGf2AjOufpcMqy
p4mtqc2l4Csudl8QeiBaOUDx4VKADbgxqpjvwD5zRpSKVj4S9y3BJi9xrRdPOm1Z2ZZYxRUxUz7d
2MXoxQsFucGJO5a4CwDBaGgJAqvwCXU5Q64rKVIUBk6mtcd3cDwX+PXqx4QrhHFGq6b6oi37YQ8B
+bhlXqlkLrbPlPFk+4Rh4EaW92iD5g8kvtXCOwvIIvs+15Io0dbpIe2W5UKo2OcyDDFvrOACmUOE
/GuEkhENcyDVyEs/4/N2u9WYMYICajCCAmYCAQEwaDBUMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQ
R2xvYmFsU2lnbiBudi1zYTEqMCgGA1UEAxMhR2xvYmFsU2lnbiBBdGxhcyBSMyBTTUlNRSBDQSAy
MDIwAhABj4peqtakTCOMXLZ2mEqRMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCB9
FvuCjMn7rPYCQXKhShrWZd7N0csJ19Jk43uLjrXI9jAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcB
MBwGCSqGSIb3DQEJBTEPFw0yMjExMDgwNDMwMTVaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUD
BAEqMAsGCWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsG
CSqGSIb3DQEBBzALBglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAiQjgH6349/zL9NMxcK+g
4UKVbe7r/gFKX9GghbCdNcwEgxdq+cJpnSMlDDYDtDmLLpU4ZQEL3NWoEMIXZ4YYEq62P5EKC7cq
JiNosaQpgNwnhuk6550B0CMCwIDLaJE4BsyJlU6xBbGVuc1syRF1pOOTdq0LppwMcyO4J6WAihZy
GQ4uux1IyWxA3kPkbFCclz4bM2nxw2eHKvp3AdRlYjlIv9sqMcLECvbpIAwYEh5la2q5/FzaEv6z
v8Mkg38mCHVHe5ARePYFdgWo4m07XqGh2Cn3UK2sLxk5Rg79aP4uUuNFvOQWmIREtvOIAz0VwxF0
GFJq5v8ZH8tRtfwaGg==
--0000000000002b570105ecedff23--
