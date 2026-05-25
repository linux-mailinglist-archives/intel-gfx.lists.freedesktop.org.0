Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG0YCp8gFGpjKAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:12:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A630C5C91B3
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A85810E05A;
	Mon, 25 May 2026 10:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="N1v33egE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5593710E05A;
 Mon, 25 May 2026 10:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1779703961;
 bh=+MxXb4nBc7rJZhFiYVaR3/C1CkpWdublLqUdpodHn/s=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=N1v33egEjVp+yHxFpO90Oyz5Zz/AaLQNzN6kGfKTshEV0J/Zuam7/Yen0nMEjzcBf
 nwPqveqi7zQvjSwL93xqT3lZxYYMjyor4GOfILYHIn6D4ixMjmbcNomyE/AMvA1ixz
 MCoeMlyAMhMFnip/hTpDcp2R6QwbIQdw/dKUjFUGa2TdazTOcDdSDO6fk4fdmLJNDr
 X9MY6O62D0Ot5NSOgVLS0P/OO7CfIRvn8KM4gs8EKdRrPDdC7nCOy9UHwzUfIGZBDq
 rbiKHIgLJ0EZy6/A33Jkr/d4FsW8yNIm7g8lJK1EZ8fvttdAyJ3uOF/ZHjEGI2JIah
 fWyjsMOfMZc/w==
Message-ID: <f36a6be9-940f-4ad9-acef-5e192f0ed8fc@lankhorst.se>
Date: Mon, 25 May 2026 12:12:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/intel/display: Add support for pipe background color
 (v4)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Chandra Konduru <chandra.konduru@intel.com>,
 dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
References: <20260505200133.636584-2-dev@lankhorst.se>
 <a734e41d-3665-402b-a56a-43fd4f8819ff@intel.com>
 <fef9056c-460e-4a49-bed8-f2882109e886@linux.intel.com>
 <090aca95-975d-4564-8b44-30df139800b5@intel.com>
 <f1f09a62-b36e-4ddf-b42c-dad300a72aef@lankhorst.se>
 <a24f9d8ecff945b2cdc032ae95bdc834ee9c248a@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <a24f9d8ecff945b2cdc032ae95bdc834ee9c248a@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: A630C5C91B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-05-25 kl. 11:39, skrev Jani Nikula:
> On Fri, 22 May 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
>> Den 2026-05-18 kl. 12:47, skrev Borah, Chaitanya Kumar:
>>> I will leave the name change up to your discretion. The i915 CI needs a re-run, though.
>>>
>>> With the typo and checkpatch issues fixed, LGTM.
>>>
>>> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>
>>
>> Addressed and renamed the functions.
>> Pushed!
> 
> Please do not change patches while applying.
> 
> It's only okay to tweak commit messages, whitespace and maybe comments,
> but function renames need a new version on the list. There are no
> exceptions.
> 
> Commit e2d57ceaa72d ("drm/intel/display: Add support for pipe background
> color (v4)") in the tree says it's v4 and references this patch, but
> they're not the same.

Thanks, I'll be more careful next time. I did compile test to ensure nothing would break,
but send a new version next time and wait for CI results.

Kind regards,
~Maarten Lankhorst
