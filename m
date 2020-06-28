Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2549620CEBE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A143B89FF9;
	Mon, 29 Jun 2020 13:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F126E0E1
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Jun 2020 10:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1593340717;
 bh=e5NKSieXJH2GcLsmY/wuj8najDt7sAwcltAcXIi6XWI=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=LobXV/SgjJGg29fFgGlmml+YtJT4X2BtMXSGY1FVcRUsJbRO3omZ0itPMn1ZFqs4M
 3QPwXB/qoekecOWftBDLktSYA8NFxup86s99X8iF6sVAX/CxyP/veT/Mv/fZsfoXLc
 JV63f+NWcGN2qOW0Pc2EyKdRrpm2L/XEmbLVhOqE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.33] ([46.85.174.131]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Ma24y-1jLgF70WjE-00VyQr; Sun, 28
 Jun 2020 12:38:37 +0200
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
References: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
 <fab11a35-be96-40c4-3572-6879eb39364a@gmx.li>
 <267c19058bf64dc2851cc5b6c0c6383c@intel.com>
 <5b9c291892c245b3becd3df45ba5f3f9@intel.com>
From: Arno <star@gmx.li>
Message-ID: <03fa1eb0-610f-84af-3a1a-b7e439b86b99@gmx.li>
Date: Sun, 28 Jun 2020 12:38:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <5b9c291892c245b3becd3df45ba5f3f9@intel.com>
Content-Language: en-US
X-Provags-ID: V03:K1:NlXvhTdrl0s2vyfcGKKS9yjo5Aav1RZ+FN3KgJSSEr1P5vlIrAM
 m/8qDJCN9B45FK8pW7GXA5C7ztJLyTqmq0Zk/L01/AqK2eqkh7B6AUVjQ71UehvnYvDIYT0
 ByEu+4d/7BB4laEIs4vDdoSE6M5zecHIGsumUzjXcEc/bXpZ8xGQNaiWaOm8r9PtISOmoa+
 QomrjRxb9EuM6lvDEZC6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qe2kpOIuAXc=:/yOf053U4qrOia048GbFbp
 bZFEJxksSwWWn/zNgwFYhVodaqr6F1rsnpqJX9LyP44ZhVa2mHLVmZyjsDEo9jZS/qMCBLYEU
 JEx7tRVC5E9jS4vvZowyRD1TDyBaSMULARSYactBaiu8DCTVAzDVoGpvDVCLKnz5uBdG733ke
 aqo88+P+DxN9/wQ1B0aA7bg/eKSe3qzwKnMd2fVZyxCLnD7dzaMnenBy9qzZbMwdKvrlkRW/O
 pgCkIW3c7G6Zs6YdOcN7X5ExNtHnNIvr8op/CmPwQsM5dY0I0nugrQXodA+nL3YumDU5NH1N4
 AfOrt+UYwYVMS4AK54mPaZ3sKAHROmOqLevFB3eqE5ehdP8SMk5R+06f/JFmhka2l8cDZdWHz
 EKLsSYSnIlAn7Zx8yc1S5q823/59ucmC3pifelH2umVvt4l9GmXvdfg948XAX2GOPaSHp8R62
 xLgGw2IMUX6KlQm0UWMqwCHY1f+aelrZoUs4JjlKgPG2cobLivO+4e+LC6JaY489/15l5sszY
 xa3qeR5qtyV+BkR85QM6I8RbaHY4USuD0nHBkAfBv0+PPoOwN/w0/gl5109aXKLgFMqoMM9ht
 0sbu6m0u1YYSSqK4nJ9d4nUwMV3daZ4+RMRKvSLAH0CnzLDjvZPN4OjnqTQrN/63tTwi98UtI
 Netox+a361N+e9Ysu+CICP+Qzu4TkVUizbRH1hd+MLT/eoHjiF70h95Nzi/xonTSqqQNEukEf
 r+/P6qEkPMK/EW2uIqIzlXh4z+leiMWOSDLWp68/yHq03Wc13j9gjEm+AJevvqqYdrXuLsxLj
 lD7M5SgcoQKpyFVsJZVB6mW7jQiPzST/yuTfzWJsRp9/du74iDzw6BboaV98py9AqmTEiF5ZP
 NgTxGoSNBOFhaIhFPicCrjSZ3NwgFbbt5PPxRlqw5YPhob5F1zOdPo3A+zrGN66aevOrfAkgt
 1BvwmGzK3AjqPadCFZXWDslVCafCyyx4i54/WQc/ZAB7EjV61tMA2SLu25tNTntKD2KDID8Uf
 ejG8qOB1789FfX90WyZln8T2L5UsaWcvFiOwqZVtrN3EbwOxB/p1f44KYpDiNXt0Pl78tjLwR
 H/dC5fbMlCW4LnCXE2UAQxaW0uE0dd4Y9qaeaUtzRWUL1GhkGQt7EEBkDENmbGpJx9kp/BQwK
 08UOFLgUciEXdF6GxoZxwpeA49MKR89vP65+4vNGlP7S0Vp+di06wtEYrZ04MK+WAklaI=
X-Mailman-Approved-At: Mon, 29 Jun 2020 13:14:32 +0000
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
Content-Type: multipart/mixed; boundary="===============2049999122=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============2049999122==
Content-Type: multipart/alternative;
 boundary="------------9963306047F5BA1EF7A9CB97"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9963306047F5BA1EF7A9CB97
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear Lakshminarayana, dear Chris, dear Jani,

thanks for opening this bug, but it seems nothing to happen with that.
Can I do anything to trigger this and bring that back to focus. It is an
really annoying bug and this flickering screen drives me crazy and with
"intel_idle.max_cstate=3D4" runtime is dramatically reduced.

 From what I read maybe you Chris have biggest knowledge. Can you give
me some feedback? Shall I give up hope?

Best regards,

Arno


On 18.05.20 09:43, Vudum, Lakshminarayana wrote:
>
> Arno, I have created bug
> https://gitlab.freedesktop.org/drm/intel/-/issues/1900
> <https://gitlab.freedesktop.org/drm/intel/-/issues/1900> for this issue.
>
> Now discussions can happen in the bug report directly. Thanks for
> reporting the issue.
>
> Thanks,
>
> Lakshmi.
>
> *From:* Saarinen, Jani <jani.saarinen@intel.com>
> *Sent:* Monday, May 18, 2020 10:21 AM
> *To:* Arno <star@gmx.li>; intel-gfx@lists.freedesktop.org;
> chris@chris-wilson.co.uk; Vudum, Lakshminarayana
> <lakshminarayana.vudum@intel.com>
> *Subject:* RE: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]]
> *ERROR* CPU pipe A FIFO underrun
>
> Please make gitlab issue if not already done. Lakshmi, please guide.
>
> *From:* Intel-gfx <intel-gfx-bounces@lists.freedesktop.org
> <mailto:intel-gfx-bounces@lists.freedesktop.org>> *On Behalf Of *Arno
> *Sent:* maanantai 18. toukokuuta 2020 10.07
> *To:* intel-gfx@lists.freedesktop.org
> <mailto:intel-gfx@lists.freedesktop.org>; chris@chris-wilson.co.uk
> <mailto:chris@chris-wilson.co.uk>
> *Subject:* Re: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]]
> *ERROR* CPU pipe A FIFO underrun
>
> Is there another place to report this kind of issue? Didn't get any
> feedback. Did I make mistakes in my mail? I already tried the Ubuntu
> bug-tracker (see below) with no success.
>
> Thank you,
>
> Arno
>
> Am 11.05.20 um 10:18 schrieb Arno:
>
>     My laptop (core m5-6y54) starts flickering after returning from
>     Suspend (to RAM) or other commands touching the video driver
>     (xrandr, powertop --calibrate, ...)
>
>     From kernel (tested with up to 5.7) I get the message:
>
>     [drm:intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU pipe
>     A FIFO underrun
>
>     I added a bug with more details here:
>
>     https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1872760
>
>     but guys from Ubuntu seems not able to help (as it is an upstream
>     bug) !?
>
>     This happend not in older kernels, but these have the problem not
>     to go in power save states. So I think the fix of that
>
>     https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1863489
>
>     causes this regression.
>
>     Hope someone can help. For a=C2=A0 laptop it is better to have both =
-
>     standby and power saving. Thank you.
>
>     Arno
>
>     _______________________________________________
>
>     Intel-gfx mailing list
>
>     Intel-gfx@lists.freedesktop.org
>     <mailto:Intel-gfx@lists.freedesktop.org>
>
>     https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
> ---------------------------------------------------------------------
> Intel Finland Oy
> Registered Address: PL 281, 00181 Helsinki
> Business Identity Code: 0357606 - 4
> Domiciled in Helsinki
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>

--------------9963306047F5BA1EF7A9CB97
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Dear Lakshminarayana, dear Chris, dear Jani,</p>
    <p>thanks for opening this bug, but it seems nothing to happen with
      that. Can I do anything to trigger this and bring that back to
      focus. It is an really annoying bug and this flickering screen
      drives me crazy and with "intel_idle.max_cstate=3D4" runtime is
      dramatically reduced.<br>
    </p>
    <p>From what I read maybe you Chris have biggest knowledge. Can you
      give me some feedback? Shall I give up hope?</p>
    <p>Best regards,</p>
    <p>Arno<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 18.05.20 09:43, Vudum,
      Lakshminarayana wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5b9c291892c245b3becd3df45ba5f3f9@intel.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 70.85pt 56.7pt;}
div.WordSection1
	{page:WordSection1;}
=2D-></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Arno, I have created bug <a
            href=3D"https://gitlab.freedesktop.org/drm/intel/-/issues/1900=
"
            moz-do-not-send=3D"true">
            https://gitlab.freedesktop.org/drm/intel/-/issues/1900</a>
          for this issue. <o:p></o:p></p>
        <p class=3D"MsoNormal">Now discussions can happen in the bug
          report directly. Thanks for reporting the issue.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Lakshmi.<o:p></o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><a name=3D"_____replyseparator"
                moz-do-not-send=3D"true"></a><b>From:</b> Saarinen, Jani
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jani.saari=
nen@intel.com">&lt;jani.saarinen@intel.com&gt;</a>
              <br>
              <b>Sent:</b> Monday, May 18, 2020 10:21 AM<br>
              <b>To:</b> Arno <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:star@gmx.li">&lt;star@gmx.li&gt;</a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:intel-g=
fx@lists.freedesktop.org">intel-gfx@lists.freedesktop.org</a>; <a class=3D=
"moz-txt-link-abbreviated" href=3D"mailto:chris@chris-wilson.co.uk">chris@=
chris-wilson.co.uk</a>;
              Vudum, Lakshminarayana
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:lakshminar=
ayana.vudum@intel.com">&lt;lakshminarayana.vudum@intel.com&gt;</a><br>
              <b>Subject:</b> RE: [Intel-gfx]
              intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU
              pipe A FIFO underrun<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Please make gitlab issue if not already
          done. Lakshmi, please guide.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in
          0in 0in 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Intel-gfx &lt;<a
                  href=3D"mailto:intel-gfx-bounces@lists.freedesktop.org"
                  moz-do-not-send=3D"true">intel-gfx-bounces@lists.freedes=
ktop.org</a>&gt;
                <b>On Behalf Of </b>Arno<br>
                <b>Sent:</b> maanantai 18. toukokuuta 2020 10.07<br>
                <b>To:</b> <a
                  href=3D"mailto:intel-gfx@lists.freedesktop.org"
                  moz-do-not-send=3D"true">intel-gfx@lists.freedesktop.org=
</a>;
                <a href=3D"mailto:chris@chris-wilson.co.uk"
                  moz-do-not-send=3D"true">chris@chris-wilson.co.uk</a><br=
>
                <b>Subject:</b> Re: [Intel-gfx]
                intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR* CPU
                pipe A FIFO underrun<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p><span lang=3D"FI">Is there another place to report this kind
              of issue? Didn't get any feedback. Did I make mistakes in
              my mail? I already tried the Ubuntu bug-tracker (see
              below) with no success.<o:p></o:p></span></p>
          <p><span lang=3D"FI">Thank you,<o:p></o:p></span></p>
          <p><span lang=3D"FI">Arno<o:p></o:p></span></p>
          <p><span lang=3D"FI"><o:p>=C2=A0</o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"FI">Am 11.05.20 um 10:18
                schrieb Arno:<o:p></o:p></span></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p><span lang=3D"FI">My laptop (core m5-6y54) starts
                  flickering after returning from Suspend (to RAM) or
                  other commands touching the video driver (xrandr,
                  powertop --calibrate, ...)<o:p></o:p></span></p>
              <p><span lang=3D"FI">From kernel (tested with up to 5.7) I
                  get the message:<o:p></o:p></span></p>
              <p id=3D"yui_3_10_3_1_1589111239449_1529"><span lang=3D"FI">=
[drm:intel_cpu_fifo_underrun_irq_handler
                  [i915]] *ERROR* CPU pipe A FIFO underrun<o:p></o:p></spa=
n></p>
              <p><span lang=3D"FI">I added a bug with more details here:<o=
:p></o:p></span></p>
              <p><span lang=3D"FI"><a
                    href=3D"https://bugs.launchpad.net/ubuntu/+source/linu=
x/+bug/1872760"
                    moz-do-not-send=3D"true">https://bugs.launchpad.net/ub=
untu/+source/linux/+bug/1872760</a><o:p></o:p></span></p>
              <p><span lang=3D"FI">but guys from Ubuntu seems not able to
                  help (as it is an upstream bug) !?<o:p></o:p></span></p>
              <p><span lang=3D"FI">This happend not in older kernels, but
                  these have the problem not to go in power save states.
                  So I think the fix of that=C2=A0<o:p></o:p></span></p>
              <p><span lang=3D"FI"><a
                    href=3D"https://bugs.launchpad.net/ubuntu/+source/linu=
x/+bug/1863489"
                    moz-do-not-send=3D"true">https://bugs.launchpad.net/ub=
untu/+source/linux/+bug/1863489</a><o:p></o:p></span></p>
              <p><span lang=3D"FI">causes this regression. <o:p></o:p></sp=
an></p>
              <p><span lang=3D"FI">Hope someone can help. For a=C2=A0 lapt=
op it
                  is better to have both - standby and power saving.
                  Thank you.<o:p></o:p></span></p>
              <p><span lang=3D"FI">Arno<o:p></o:p></span></p>
              <p><span lang=3D"FI"><o:p>=C2=A0</o:p></span></p>
            </div>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                lang=3D"FI"><o:p>=C2=A0</o:p></span></p>
            <pre><span lang=3D"FI">_______________________________________=
________<o:p></o:p></span></pre>
            <pre><span lang=3D"FI">Intel-gfx mailing list<o:p></o:p></span=
></pre>
            <pre><span lang=3D"FI"><a href=3D"mailto:Intel-gfx@lists.freed=
esktop.org" moz-do-not-send=3D"true">Intel-gfx@lists.freedesktop.org</a><o=
:p></o:p></span></pre>
            <pre><span lang=3D"FI"><a href=3D"https://lists.freedesktop.or=
g/mailman/listinfo/intel-gfx" moz-do-not-send=3D"true">https://lists.freed=
esktop.org/mailman/listinfo/intel-gfx</a><o:p></o:p></span></pre>
          </blockquote>
        </div>
      </div>
      <p>-----------------------------------------------------------------=
----<br>
        Intel Finland Oy<br>
        Registered Address: PL 281, 00181 Helsinki <br>
        Business Identity Code: 0357606 - 4 <br>
        Domiciled in Helsinki </p>
      <p>This e-mail and any attachments may contain confidential
        material for<br>
        the sole use of the intended recipient(s). Any review or
        distribution<br>
        by others is strictly prohibited. If you are not the intended<br>
        recipient, please contact the sender and delete all copies.</p>
    </blockquote>
  </body>
</html>

--------------9963306047F5BA1EF7A9CB97--

--===============2049999122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2049999122==--
