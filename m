Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F61A4954A3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 20:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0502410E9B8;
	Thu, 20 Jan 2022 19:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7BD10E9B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 19:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642705850; x=1674241850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9iIektMwK7SNV3KTN0LX1iGldIKgDxhg6AvAbcw/MzU=;
 b=lQXMGW6yQgy9zIwjuP65j5U8qFURefswG8uaWXb34rA29iugypL0HIdB
 jWWKQ/irFzfFecvvaiJNfuqdHwmpwXzpJUGdKIdkJQorttMAN/uoLdzyQ
 gcZ+yr+YWCSeKKiOcaq36eyHT99ISrPPWy/lPvO2onG5HI7QMJRePZANt
 eOvZDy55j4Q2PwZtnOga5V767GU9/puo7EA77YJexrmj+UcoG/vIjA6Ep
 mwVMV5Bz6/CU48ZvJiBPqWuJiXN1vqzSiOcahZxd2t7R3wfc08NMBX19h
 uq1C/H5rkvcrLjEreGL+okt6+6+h+L0gff4YdtfsNJm6cE7MYXSyCMVg0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="269858324"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="269858324"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 11:10:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="616216125"
Received: from yxu1-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.29.40])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 11:10:50 -0800
Date: Thu, 20 Jan 2022 11:10:55 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20220120191055.y3tiojdk6ddsjqfb@ldmartin-desk2>
References: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
 <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
 <20220118213718.kfn557xmupo2y4fr@ldmartin-desk2>
 <3a568998f3c3c33a45049ce292b3b3b6d0d05af5.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <3a568998f3c3c33a45049ce292b3b3b6d0d05af5.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 20, 2022 at 03:31:34AM +0000, Tolakanahalli Pradeep, Madhumitha wrote:
>On Tue, 2022-01-18 at 13:37 -0800, Lucas De Marchi wrote:
>> On Thu, Dec 23, 2021 at 03:18:57AM +0000, Tolakanahalli Pradeep,
>> Madhumitha wrote:
>> > On Fri, 2021-12-17 at 21:37 +0000, Yokoyama, Caz wrote:
>> > > On Thu, 2021-12-16 at 19:41 -0800, Madhumitha Tolakanahalli
>> > > Pradeep
>> > > wrote:
>> > > > Replace GEN<n> with DISPLAY_VER<n>, in line with the naming
>> > > > convention
>> > > > followed in the i915 driver code.
>> > > >
>> > > > Signed-off-by: Madhumitha Tolakanahalli Pradeep <
>> > > > madhumitha.tolakanahalli.pradeep@intel.com>
>>
>> I was checking to apply this today, but BAT is failing on CI and it
>> didn't trigger the full run. Error seems unrelated and I don't think
>> this would trigger any error in the machines in CI, but I'd prefer to
>> merge this with a clean run.
>>
>> Can you re-submit or trigger it again via patchwork if the patch
>> still
>> applies?
>>
>> thanks
>> Lucas De Marchi
>
>The error does seem pretty random. I've triggered a rerun, awaiting
>results.

CI results are now clean. Pushed.

thanks
Lucas De Marchi
