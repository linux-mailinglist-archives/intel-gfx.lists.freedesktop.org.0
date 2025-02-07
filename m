Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92404A2F16C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 16:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75E3B10E204;
	Mon, 10 Feb 2025 15:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=radix.lt header.i=povilas@radix.lt header.b="beNI0oTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE5B10EBB3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 21:56:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1738965409; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=NBph5k5d8AhwgzDq4Be2ttsPhtUAyJLoO3608hPsHP0xQk1Twe6Zyoz+2610eVCF+a09dzQY4g2aWaFrWk1XiyaE67/hF0e9naQ2jjdw7/3kVVL53oYCOPV7ZhHNl3PtTL2AHA8MGyUvrMoDnPvdpDjfDyurhQWZSCen0sVtyVg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1738965409;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=mcPxDdCEElA9opueKy8lSbAdmMu2tRBg3JP0RqltOB8=; 
 b=fzDrdjOLQWDf928lVXtz+gvUzLbRohEQ3U7a0avjxH5cbrhd5fzprsuA+ouDJ7kNj0NJ8yRJA5dIfO9a77TmnlPbSIgeLCEu+GbFYu9q8v2hyG+HwO0Zpg+svBN+GvcCthyjD0vt749ueXLAmxHWBv1pC0rWxhbXdMC3JcYazoM=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=radix.lt;
 spf=pass  smtp.mailfrom=povilas@radix.lt;
 dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738965409; 
 s=zoho; d=radix.lt; i=povilas@radix.lt;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=mcPxDdCEElA9opueKy8lSbAdmMu2tRBg3JP0RqltOB8=;
 b=beNI0oTq28xOVXj94+eRgSr5Bsb/DXCeFx6uZrW6nI9KpwiO1bds0a4nUoCgqfa4
 ciyCG4Dtx4tigufg4/4cCwWhTr//Gz7eNzJ/Hpuw8Icj5s9PhVNAZ0FIvY4AneCWWI/
 fWxqNXatKE7ndFAfEDdwzoor00y/zMpo90IDYh08=
Received: by mx.zohomail.com with SMTPS id 1738965406175449.02207042471514;
 Fri, 7 Feb 2025 13:56:46 -0800 (PST)
Message-ID: <c4cc1514-3b32-460e-a98b-53a42feeb41c@radix.lt>
Date: Fri, 7 Feb 2025 23:56:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: xf86-video-intel is broken and with MRs disables we can't fix it
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: "xorg-devel@lists.x.org" <xorg-devel@lists.x.org>,
 intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
References: <1e5b5275-d194-4af0-8927-f5b93416a407@radix.lt>
 <Z6Z6My8FcaLaLPu0@intel.com>
From: Povilas Kanapickas <povilas@radix.lt>
Content-Language: en-US
In-Reply-To: <Z6Z6My8FcaLaLPu0@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Mon, 10 Feb 2025 15:23:40 +0000
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

Hi Ville,

Thanks for quick response.

Turns out due to multiple factors leading to my confusion most parts of
the email are plainly wrong. Apologies for going to public mailing list
without more research and discussion.

On 2025-02-07 23:25, Ville Syrjälä wrote:
> On Fri, Feb 07, 2025 at 08:57:34PM +0200, Povilas Kanapickas wrote:
>> Hi,
>>
>> xf86-video-intel driver is currently cannot be compiled with released
>> versions of X server. Simple reproduction steps: create Debian Bookworm
>> container, download module sources and all required dependencies and try
>> to build.
> 
> Builds fine on my Gentoo boxes here. What are the actual issues
> you are seeing?

Linking failure on meson due to missing XvGetPortAttribute, and failure
to even start building on autotools. I think since you're responding I
will simply submit patches your preferred way.

>>
>> Debian Bookworm is pretty much the least exciting configuration
>> possible. And the fact that xf86-video-intel cannot be compiled there is
>> not good.
>>
>> For almost any other driver this is not a problem, because it is
>> possible to create a merge request on gitlab.freedesktop.org. Eventually
>> simple maintenance and build-related merge requests are merged. However
>> in the case of Intel driver, merge requests are disabled and the
>> recommended way to submit patches is via intel-gfx@lists.freedesktop.org
>> mailing list. Unfortunately, patches submitted so far are ignored there.
> 
> I've not seen any patches on the list. Care to point them out?

The patches are on February 2024, but I must admit I didn't double check
on the list and there in fact are your review responses to these. The
submitter simply didn't follow through.

>>
>> Given that the last commit to xf86-video-intel was 22 months ago, I
>> suspect there's little interest from Intel to spend time maintaining the
>> project.
> 
> You must be looking at some stale repo. My last commit was 
> commit ce811e78882d9f31636351dfe65351f4ded52c74
> Author:     Ville Syrjälä <ville.syrjala@linux.intel.com>
> AuthorDate: Sat Mar 18 15:45:44 2023 +0200
> Commit:     Ville Syrjälä <ville.syrjala@linux.intel.com>
> CommitDate: Tue May 7 00:32:24 2024 +0300

Sorry, I looked into author date only :-(

>>
>> What do you think about opening up merge requests on the repository so
>> that at least the driver can be brought back to compilable state? Does
>> anyone have other ideas how the current situation could be resolved?
> 
> I wouldn't want to deal with mrs for any high volume stuff, but
> since this only gets the occasional fix I guess it could work.

Thanks. I think that it doesn't make sense to change anything since the
premise of my email was wrong.

Sorry for wasting time.

Regards,
Povilas
