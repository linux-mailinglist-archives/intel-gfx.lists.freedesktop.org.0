Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 738AE4D75D9
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Mar 2022 15:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5638D10E08C;
	Sun, 13 Mar 2022 14:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from server2.walther.xyz (server2.walther.xyz [193.200.241.189])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3270810E08C
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Mar 2022 14:26:39 +0000 (UTC)
Message-ID: <d1fee982-9ebe-5816-ce29-3a9ce4cc7838@walther.xyz>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walther.xyz; s=2021;
 t=1647181594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sNjFGeWAZjTMxlPwiu2FdWwjbu55BAFQBM0h5uE4RSM=;
 b=lOdOwr4zKUXtrdDZnYJ3+HdRvwr7PhwuN1XWs9AmDep60cUyNbcrapMMny9YHRgbDYdHmg
 IGfIuUOwGLuXWIFDeJXIi+4dCFh1WCR4SdLT+yroGJrlOnEtYu5taj1KCx453X4Qt8k48b
 Tne411G3CQdjLSnwCNbXTwXgpZ9YWnVhVv0bX1QqCTUuwj1UqM+NBtN7HpHloZ4bu5uxG+
 51PADQicy7qnfYjS1JTlI1ZxkX6UWD0SxOroUd3hKSVECb//IUFrgHGJ9eit7XqnfHHiXJ
 Q2J43BgRXHuDdC7RPkOvW1VZIVT20ShylJYrYwINrt7nO7sqxXoJj99UyDiTDg==
Date: Sun, 13 Mar 2022 15:26:31 +0100
MIME-Version: 1.0
Content-Language: de-AT-frami
To: intel-gfx@lists.freedesktop.org
References: <326ea3aa-1eb9-3458-0c99-5a15d4f7a437@walther.xyz>
 <ea520ac7-3955-398b-0646-28ae033e3ada@walther.xyz>
 <20220221112656.GB834116@ideak-desk.fi.intel.com>
From: Matthias Walther <matthias@walther.xyz>
In-Reply-To: <20220221112656.GB834116@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=matthias@walther.xyz smtp.mailfrom=matthias@walther.xyz
Subject: Re: [Intel-gfx] Enable DisplayPort MST on low cost USB-C docks
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

Thanks for the reply! Posted and cross link:
https://gitlab.freedesktop.org/drm/intel/-/issues/5331

Am 21.02.22 um 12:26 schrieb Imre Deak:
> Hi Matthias,
>
> could you open a ticket at gitlab, providing a dmesg as described at
> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
>
> Thanks,
> Imre
>
> On Sun, Feb 20, 2022 at 03:33:56PM +0100, Matthias Walther wrote:
>> Hm, no ideas on this?
>>
>>
>> Am 28.01.22 um 20:50 schrieb Matthias Walther:
>>> Hello,
>>>
>>> there are a lot of quite similar, low cost USB-C docks with multiple
>>> display output (usually 2x HDMI + 1x VGA) available on the big online
>>> platforms such as Amazon, Ebay, and Aliexpress.
>>>
>>> Internally the display outputs are connected via DisplayPort. If you
>>> connect a monitor to one of the ports, it's detected as display port
>>> connection in xrandr. Always the same dpX in xrandr, independently of
>>> which physical port in use. This suggests that all physical outputs are
>>> connected to the same DisplayPort output.
>>>
>>> On Microsoft's Windows these docks support multi headed output, like a
>>> different image on all displays (called expand mode in Windows). However
>>> the vendor advertises, that on MacOS the adapter can only display the
>>> same image on all ports of the adapter. This might be a hint, that the
>>> adapter internally uses DisplayPort's Multi-Stream Transport (MST)
>>> technology for the second and third display output (2nd HDMI, VGA), as
>>> Apple does not support MST while Microsoft does. Linux behaves just like
>>> MacOS here and only mirrors the image.
>>>
>>> Linux is supposed to support MST since like around 2014. There are
>>> parameters to enable it for i915, e. g. i915.enable_dp_mst={1,2}.
>>>
>>> However unfortunately those USB-C docks do not support multi-headed
>>> output on Linux. The second monitor is not detected, there is just a
>>> mirrored image of the first monitor on monitor two and three.
>>>
>>> Does Linux support MST over Thunderbolt 3/4? Is there maybe a hidden
>>> command that the Windows driver uses to switch MST on in the dock's
>>> chipset?
>>>
>>> Any hints on how to debug this would be highly appreciated! Those
>>> adapters become more and more popular, they are affordable and it would
>>> be awesome to make them fully work with Linux.
>>>
>>> Best,
>>> Matthias
>>>

