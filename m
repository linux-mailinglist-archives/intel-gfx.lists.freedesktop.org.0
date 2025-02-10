Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E268DA2F812
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 20:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A9810E5F0;
	Mon, 10 Feb 2025 19:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=radix.lt header.i=povilas@radix.lt header.b="hws91n6t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036B310E5F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 19:01:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1739214070; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=TNqwmybNnca1PGC+W7ufczWfJGknb/oNcbKY8SpULw1F+72Lj3bqzIBtCoD8G6AMlOEb5GlfWIil3Rw2SH27KRIY9q1MGZyrOG+2RFILP5jUGBrIQJIZg+zEoGwb5kFq9acIXHnwjekpS/UFmUdqV2sbBfnOd3EWG1yOK1HCuQk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1739214070;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=DjlOHQTO9Nr74/tDj6vj2gj6NhcTNkg5phR++WJbW1k=; 
 b=KGD03tJRTM9iAWdNmB33sk62kZ4kXus53bOpfvRegblR9u+CRhgq0NnAQHFaoGx9b9+g+JayvdbffsBvaIRXcaoX7KheU8qoFTsulI10TNarMNmajdS/w2MCiB9Z65+3M8LS3nlzA0BlpGvKLghLMIIyq2cmMNiu4QPw/84PaeE=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=radix.lt;
 spf=pass  smtp.mailfrom=povilas@radix.lt;
 dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739214070; 
 s=zoho; d=radix.lt; i=povilas@radix.lt;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=DjlOHQTO9Nr74/tDj6vj2gj6NhcTNkg5phR++WJbW1k=;
 b=hws91n6tEq0gPpZWDcg1MPKAcp+kaLe0M2KijJX0QMRjIvdlCn0/IIsaCgM5qyfP
 xZo+CiCCTIzJdd4I6r77UdJG5rRV5v4x7J5fw/xPtm/T2oJWIxUDu6H7cLCeO7ASXYU
 ce/at3WDmStp7Dx1X+BaApNZB4wcwo1lGmaVAFrw=
Received: by mx.zohomail.com with SMTPS id 1739214067635709.4981167660923;
 Mon, 10 Feb 2025 11:01:07 -0800 (PST)
Message-ID: <29c8c18e-b4d1-4df8-83c2-7ddfa0dff303@radix.lt>
Date: Mon, 10 Feb 2025 21:01:03 +0200
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

For the record, the build failure was some weird missing autotools
dependency causing a weird error. Redoing the test after `apt build-dep
xserver-xorg-video-intel` fixed the problem. Again, sorry for the wrong
email.

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
> 
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
> 
>>
>> What do you think about opening up merge requests on the repository so
>> that at least the driver can be brought back to compilable state? Does
>> anyone have other ideas how the current situation could be resolved?
> 
> I wouldn't want to deal with mrs for any high volume stuff, but
> since this only gets the occasional fix I guess it could work.
> 

