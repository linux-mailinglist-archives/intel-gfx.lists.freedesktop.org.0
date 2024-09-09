Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C097254C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 00:27:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CBF10E076;
	Mon,  9 Sep 2024 22:27:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Wq2x2i3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3C110E076
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 22:27:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CA9CA5C014A;
 Mon,  9 Sep 2024 22:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 899D6C4CEC5;
 Mon,  9 Sep 2024 22:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725920840;
 bh=9aYvYwKGp5TvRAOVrAIm4Sf65Os0O/j1yXgKtTYXNvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wq2x2i3MX4Qw7xNaL4eFEasIO/1Ld5gjCVRT1Ix4wgqYj3kv9QhFhXIU2QlxNkdfF
 cQzMl0ZEFZF8SRo50tsSuAmg06V4D7u7/q1VNBspxQO+39wr2qF8gAZN5pia+W6jPk
 k7tRqsQH9m1rg2Uop+H8jRTp5E0S+qS3I6ZYyX/tF5d9gEnVkAVBoKn6u4ilfSKLYu
 p4vytrPe0eCkklsRYKynMjb1KBYoJS+mTgH5AK0/YRgxX2jOdi15Ti6OeYwwvntW9D
 d48O33AcqdvhCc0QDQ0rBp00XkoYrFZKwWzZ1iYiiWnupNXvFeHjvdss4IIjZPt0mT
 n+/SHtQS/2Dcg==
Date: Tue, 10 Sep 2024 00:27:16 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>, jani.nikula@linux.intel.com, 
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, tursulin@ursulin.net,
 linux@roeck-us.net, 
 andi.shyti@linux.intel.com, andriy.shevchenko@linux.intel.com, 
 intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 anshuman.gupta@intel.com, 
 badal.nilawar@intel.com, ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
Message-ID: <4nlwj725xkrb3zsulbehgqc7mpjjysnra3ep543ux5ewn7po4h@72psjd3dnw4v>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <ec2f4b09-03f7-4866-ae50-2f3b5d093a0d@intel.com>
 <Ztw4JIWCpsDpMHN0@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ztw4JIWCpsDpMHN0@black.fi.intel.com>
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

Hi Raag,

> > > +	case hwmon_temp_input:
> > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> > > +
> > > +		/* HW register value is in degrees, convert to millidegrees. */
> > use millidegree Celsius here
> 
> The intent here is to signify the conversion rather than the unit.
> But okay, will add if we have another version.

is Riana asking to improve the comment here? Then please do, if
someone asks to make better comments it means that he is asking
to answer to an open question that someone might have in the
future.

Sending a v3 is not much of a work but improving the comment
later is not trivial.

Besides you need to retrigger tests anyway because you got a
BAT test failure :-)

Thanks,
Andi
