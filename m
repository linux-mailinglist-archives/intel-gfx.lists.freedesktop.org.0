Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8019BB9F6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 17:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D97E010E3E3;
	Mon,  4 Nov 2024 16:15:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cyberialabs.net header.i=@cyberialabs.net header.b="XHBjF0U2";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=purelymail.com header.i=@purelymail.com header.b="iEHwTryQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com
 [34.202.193.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6E310E064
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Nov 2024 01:46:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256;
 b=XHBjF0U25oHci1aOe5RMyTIJZ6jSAA62N6KiWXUtPUjQJMs9g0eTmzLbYTCrB3tM1qoTpfLCd9hIibcgS2zJpyENiY3bRolIZ6egmMejhPnIg0WLsm3NK9/UoNytl5vuXqQUSKJS57qcB/Ylh++RF6/mFXCkqtieYNWW6zDTPXSfM/XAo7KbRhwcw6ezU1UPqw5i46Jn0BN3yOdJkeYFTX6e9dGyAswFKXN4Vu3nqfhVrx1YbVSkkhq9kYZv6XmNUDRNAa8kcs0d7PUQiLzUzP7VGGLYdCNpQRMBjLByZcJvuHaHAPWrp7JHjJJ4gO9q2qrzzJqOavHIYwXa/6/klQ==;
 s=purelymail3; d=cyberialabs.net; v=1;
 bh=DmlX6wo3RK9EmE1nVgjuz5yzjZTOGWAIY+q6s2XE3DI=;
 h=Received:Date:From:To:Subject; 
DKIM-Signature: a=rsa-sha256;
 b=iEHwTryQLdMJMLE4v774o/UjWVutrPA0M90AUuJFBanjeOs5N1n54I3N7xsOMBcuo3CgXEorkK4ozB4EVCQ5Xn2nkHPYaBHEwuFyPGjxFhtT1gxzwH0H9LROVWzMeDBjP+pLcA3A+hv3/UpfEYMXa6T+byyjBq6iqk1d1ZLG/nnPdMppKfI76lx6Kn4edDYYlujxmD6PCe9E/26HIrzapr+D2qIKQMDVdxAyOPhIVXSWNIzxjuVCiBjkKnunNtlNQ1BR8pKWmNlSUmqyxbEoS7Ob2CeEpHteDT9jYjc9+4auWGPEqV/kxbWIQdjxVSVjHI+Ei7sYEZlrt3KfcJSIsA==;
 s=purelymail3; d=purelymail.com; v=1;
 bh=DmlX6wo3RK9EmE1nVgjuz5yzjZTOGWAIY+q6s2XE3DI=;
 h=Feedback-ID:Received:Date:From:To:Subject; 
Feedback-ID: 6229:1532:null:purelymail
X-Pm-Original-To: intel-gfx@lists.freedesktop.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPA id 1216398469; 
 Sat, 02 Nov 2024 01:46:15 +0000 (UTC)
MIME-Version: 1.0
Date: Sat, 02 Nov 2024 01:46:15 +0000
From: Alexander Coffin <alex@cyberialabs.net>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: Re: i915 potential deadlock
In-Reply-To: <ZyU1SQjAfUQBgbPF@intel.com>
References: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
 <ZyU1SQjAfUQBgbPF@intel.com>
User-Agent: Purely Mail via Roundcube/1.6.8
Message-ID: <ebe1c5bc56eb2e84e791ba5e9bf2c714@purelymail.com>
X-Sender: alex@cyberialabs.net
Content-Type: multipart/alternative;
 boundary="=_c76a562ab226270784a59fb23864d94b"
X-Mailman-Approved-At: Mon, 04 Nov 2024 16:15:38 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--=_c76a562ab226270784a59fb23864d94b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

Hi Rodrigo,

> I'm sorry for that. Our list is moderated for non-subscribers because 
> of the amount of spams we receive daily. But I eventually got to your 
> msg and allowed it to go through.

I am sorry about sending the email twice in that case. In hindsight, I 
probably should have subscribed to the list and then sent the email to 
avoid this issue, but I don't interact with email lists that often so I 
didn't think of doing that.

> Could you please file a bug in our gitlab?

Of course. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12677

> Well, so many things changed from 6.1... Is it possible to test with a 
> drm-tip kernel and see if it is still reproduced?

Sorry, I mispoke in my last email that 6.1 is the latest LTS release. 
6.6 is the latest LTS release. 6.1 is the default for Debian though and 
isn't considered old there, and that is the kernel that I use on my 
personal desktop, personal laptop, server, and work laptop.

I was hoping that this bug could be debugged (or at least attempted) 
with a single deadlock report (that has worked well most other times I 
have reported similar issues to kernel maintainers for other drivers).

If I knew how to recreate this issue I would gladly try out any kernel 
version for a quick test. Or if you have any things that you 
specifically want me to test then I would be happy to try a newer kernel 
version. However, I am not really comfortable daily driving a bleeding 
edge kernel version on my work laptop as of right now. I may be able to 
read through the source code to try to understand what could be 
triggering this issue and then figure out how to use that information to 
recreate it on a newer version, but as I don't think I have seen the 
issue since I reported it I'm not sure how likely it is that I stumble 
upon the issue by chance again. I would feel comfortable daily driving 
random kernels on my personal laptop, but I use an XPS 9370 for my 
personal laptop and I believe an XPS 15 9530 at work (if this is helpful 
information I can double check this and provide more system details) so 
they aren't the same hardware (I have no idea if the hardware is 
relevant).

Do you know where I could find information on the versions supported by 
Intel of the i915 driver? I can't seem to find anything from doing a few 
minutes of Google searching.

Best wishes,

Alex Coffin
--=_c76a562ab226270784a59fb23864d94b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Helvetica,A=
rial,sans-serif'>
<p>Hi Rodrigo,</p>
<p><br /></p>
<p>&gt; I'm sorry for that. Our list is moderated for non-subscribers becau=
se of the amount of spams we receive daily. But I eventually got to your ms=
g and allowed it to go through.</p>
<p>I am sorry about sending the email twice in that case. In hindsight, I p=
robably should have subscribed to the list and then sent the email to avoid=
 this issue, but I don't interact with email lists that often so I didn't t=
hink of doing that.</p>
<div id=3D"signature"></div>
<p><br /></p>
<p>&gt; Could you please file a bug in our gitlab?<br /><br />Of course. <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12677">htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12677</a></p>
<p><br /></p>
<p>&gt; Well, so many things changed from 6.1... Is it possible to test wit=
h a drm-tip kernel and see if it is still reproduced?</p>
<p><br /></p>
<p>Sorry, I mispoke in my last email that 6.1 is the latest LTS release. 6.=
6 is the latest LTS release. 6.1 is the default for Debian though and isn't=
 considered old there, and that is the kernel that I use on my personal des=
ktop, personal laptop, server, and work laptop.</p>
<p><br /></p>
<p>I was hoping that this bug could be debugged (or at least attempted) wit=
h a single deadlock report (that has worked well most other times I have re=
ported similar issues to kernel maintainers for other drivers).</p>
<p><br /></p>
<p>If I knew how to recreate this issue I would gladly try out any kernel v=
ersion for a quick test. Or if you have any things that you specifically wa=
nt me to test then I would be happy to try a newer kernel version. However,=
 I am not really comfortable daily driving a bleeding edge kernel version o=
n my work laptop as of right now. I may be able to read through the source =
code to try to understand what could be triggering this issue and then figu=
re out how to use that information to recreate it on a newer version, but a=
s I don't think I have seen the issue since I reported it I'm not sure how =
likely it is that I stumble upon the issue by chance again. I would feel co=
mfortable daily driving random kernels on my personal laptop, but I use an =
XPS 9370 for my personal laptop and I believe an XPS 15 9530 at work (if th=
is is helpful information I can double check this and provide more system d=
etails) so they aren't the same hardware (I have no idea if the hardware is=
 relevant).</p>
<p><br /></p>
<p>Do you know where I could find information on the versions supported by =
Intel of the i915 driver? I can't seem to find anything from doing a few mi=
nutes of Google searching.</p>
<p><br /></p>
<p>Best wishes,</p>
<p>Alex Coffin</p>
</body></html>

--=_c76a562ab226270784a59fb23864d94b--
