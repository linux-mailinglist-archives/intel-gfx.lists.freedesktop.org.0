Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED49E1D717A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 09:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA8E89EA9;
	Mon, 18 May 2020 07:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1134B89EA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 07:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589785592;
 bh=7hW4F41FdA0aMiYC2DflGM8bHCXJ6yKbBjWxEHa9OJo=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=F2EMdFl3dbWoN5QcSZCG85fVVKSCxjevSF0JI2zgqf4QAMlYc8r6PcDkHtX/bRjp9
 9rz8aXEMnChx1fVfGuxlI7+DZ95zMwOrjo2zS3UkNaulg4mIBsR+C5cPdac+yYmElX
 8oK4klX5Kv5WqBXYf0OUWJkFUiYL3bQYA/+04t8Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.24] ([46.85.162.73]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MjS9I-1jBwCg20mQ-00kvAt; Mon, 18
 May 2020 09:06:32 +0200
To: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
References: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
From: Arno <star@gmx.li>
Message-ID: <fab11a35-be96-40c4-3572-6879eb39364a@gmx.li>
Date: Mon, 18 May 2020 09:06:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
Content-Language: en-US
X-Provags-ID: V03:K1:mNTG/MuGurcE24U3WSLN7U0gw0IZqk9WhQGlmjik7KuNDBSazVU
 LJccfOkdkKtXfGZViB3Nk+LP1kipZMXmY8QYbDQ9s9l8xpqWek/JaIjzx9FvTIaZAr7JpCr
 hc1nZ7AwgbJ6aeVlUPoabOdp41z5RGREPYWBBioiHXMmUpLwPYTMmJ84s36o+B7rVy4gTYG
 +owbByR2V7d3ojBB/HtXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q37BluNpCqc=:DlyMoIAliygRyS8D6kWiSO
 +LbfLjCn4nTHjhB2lUrXT498xglfbjAAr8PG11LSpMPn9uAtlSrIc6iuLGTcWZx9b2Ds/Um7G
 nCJlY5aVdyR5Us9n4/3Md84IZGp45Z7oEctEZX/AlJBqA1b/mcwcNkAicugpm0KDuwa0A43e3
 4shSfsXYtVRlutcvUP95Dfvx6kcDqGwkLESDUawk0qRd8dUWqFjNbXm9eVFATiFUItjCHyhAu
 UX743sLSZfP4dxDvOkVRNzYqwv4h19Bj40bGvixDnFGUjfC6hX6fJOWcEcPjr0vkn/0iMn22D
 uETQL1y2hmYlWmSHE33B12W4jR7Rdh8a/42D1b4G+heyQSRJRlEJLCPmou+c0itoKa/k4mVWg
 cYCTfz96JSSjIHl82O9C4AnSSCk/54mf9AznRRJ06MFSy0FusuhYb4AC6fHcZM6n5qZKGNPp1
 /8xU67EkGhrMymQhbt7ZOe/1gkHWsbyqGtt3AmdeXTPI8UjLeiyePd+mGaC1zPwUwAjlVbNLb
 GMtHJ5lubJrRxvEGavzylmHHTsP42pKPD1Sf67Zy3Knbox1jI6tt1XoiPxlwEiyTJkcnjSdxr
 TZunvq3wNRvLj7RntRStQZOVrA1DD/v4uz2B/s3NkWRtaYs7sf9GImByPhkyFl97sBGIZwgHa
 wNhaXPD1ixKLMLuaNxLuVYCJaeQ2n/Wu7oCK9DXdPLvD9b7zJBl3EFEBU0M4RqMJFyduA8VVj
 e/m3e5ytmGWTC9D9tcfois2zbNSAa9R5j0O6n/gt3myAI0fJmX3TuD7aqU+7VG/qINOVG47f4
 7hret+cE4dqTbSNacNGtX1gqgRfyIqBjPWFAA9eyfPxA0QBtjg00hCoaW5WnDVst/+J1cwyci
 e/yaolBfwCR8cUadsw4MRy715PQn6D5UpTxneO4M/m25oeXuar4ie8ZGwsTd2OyqI+gcCZDt1
 PXIECGlj5Der2Uf25yVL7aVHnOw9AgwqozNOXq7Vb0BiSmk75iFe0JfYq3vcrMlyUTb0C00PI
 UMVnYb6w4aQKRD1LU1Py8YMQ8Fe8D17q55OoSAUdtnyGuBcUtqrx0Xe/KmADjL2pxJbj7yP6o
 8V20EjA17gWsZJI36OOAv9lHksRTroNbFQxr0aXRIiuQ7BpjyPR0he1hFssGF6Z/DcM0dQEp3
 2ExSlr2b9nA2zIxl4xtyFjy/IFCgvJWjVdDyisnO9fNvMb/AtnJ/uiKpg1DozPLflTbw0=
Subject: Re: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR*
 CPU pipe A FIFO underrun
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
Content-Type: multipart/mixed; boundary="===============0064606919=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0064606919==
Content-Type: multipart/alternative;
 boundary="------------3020A0786BC0570A271AB697"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3020A0786BC0570A271AB697
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Is there another place to report this kind of issue? Didn't get any
feedback. Did I make mistakes in my mail? I already tried the Ubuntu
bug-tracker (see below) with no success.

Thank you,

Arno


Am 11.05.20 um 10:18 schrieb Arno:
>
> My laptop (core m5-6y54) starts flickering after returning from
> Suspend (to RAM) or other commands touching the video driver (xrandr,
> powertop --calibrate, ...)
>
> From kernel (tested with up to 5.7) I get the message:
>
> [drm:intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU pipe A
> FIFO underrun
>
> I added a bug with more details here:
>
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1872760
>
> but guys from Ubuntu seems not able to help (as it is an upstream bug) !=
?
>
> This happend not in older kernels, but these have the problem not to
> go in power save states. So I think the fix of that
>
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1863489
>
> causes this regression.
>
> Hope someone can help. For a=C2=A0 laptop it is better to have both -
> standby and power saving. Thank you.
>
> Arno
>
>
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--------------3020A0786BC0570A271AB697
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Is there another place to report this kind of issue? Didn't get
      any feedback. Did I make mistakes in my mail? I already tried the
      Ubuntu bug-tracker (see below) with no success.</p>
    <p>Thank you,</p>
    <p>Arno<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Am 11.05.20 um 10:18 schrieb Arno:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:aab05507-450d-5643-20af-500dec6bc59b@gmx.li">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div class=3D"moz-text-html" lang=3D"x-unicode">
        <p>My laptop (core m5-6y54) starts flickering after returning
          from Suspend (to RAM) or other commands touching the video
          driver (xrandr, powertop --calibrate, ...)</p>
        <p>From kernel (tested with up to 5.7) I get the message:</p>
        <p id=3D"yui_3_10_3_1_1589111239449_1529">[drm:intel_<wbr>cpu_fifo=
_<wbr>underrun_<wbr>irq_handler
          [i915]] *ERROR* CPU pipe A FIFO underrun</p>
        <p>I added a bug with more details here:</p>
        <p><a class=3D"moz-txt-link-freetext"
            href=3D"https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1=
872760"
            moz-do-not-send=3D"true">https://bugs.launchpad.net/ubuntu/+so=
urce/linux/+bug/1872760</a></p>
        <p>but guys from Ubuntu seems not able to help (as it is an
          upstream bug) !?<br>
        </p>
        <p>This happend not in older kernels, but these have the problem
          not to go in power save states. So I think the fix of that=C2=A0=
</p>
        <p><a class=3D"moz-txt-link-freetext"
            href=3D"https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1=
863489"
            moz-do-not-send=3D"true">https://bugs.launchpad.net/ubuntu/+so=
urce/linux/+bug/1863489</a></p>
        <p>causes this regression. <br>
        </p>
        <p>Hope someone can help. For a=C2=A0 laptop it is better to have
          both - standby and power saving. Thank you.</p>
        <p>Arno<br>
        </p>
        <p><br>
        </p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_____________________________=
__________________
Intel-gfx mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Intel-gfx@lists.freed=
esktop.org">Intel-gfx@lists.freedesktop.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.freedesktop.org/m=
ailman/listinfo/intel-gfx">https://lists.freedesktop.org/mailman/listinfo/=
intel-gfx</a>
</pre>
    </blockquote>
  </body>
</html>

--------------3020A0786BC0570A271AB697--

--===============0064606919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0064606919==--
