Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 984E37D9606
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 13:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220E410E0C2;
	Fri, 27 Oct 2023 11:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4017E10E0C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 11:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698405020; x=1729941020;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=2yjfIOGP/AcdmNZuRZxjRCYxmDAzgaM9tQSe96ZK4B0=;
 b=grX/mKrfv26AYcRbF7tcMXJ4BP3RLIvL05A2hQTVottpiZZlvIoAEEUV
 agy0sv4M4rlYN1021kTAC02mfppOhtZJG9nRqB3pnEZZNruyKmArlHE1D
 yT+6PBN4nAekA0HUaO7BuF1wXgoZCbDD1vDE38C4qWZjvggLbY28y2vD5
 Ye9D0KUIsHBUk9eFWNg0BHdv91RXJksmZ5vYuB1Lt0hFhHA19VHj+fLPF
 eXImD7H2fGdEopXWYFSfSo5ENlSYU8xOclkNIunnCu7WUIsQYy4p94Haa
 /o8Nygio/xTtrPzGoUEARnY4OduF74GskNjwkkRZ8fdJFT5DL7EVTVVih A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384964271"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="384964271"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 04:10:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="7196310"
Received: from jhajducz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 04:08:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231027095336.3059445-2-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com>
Date: Fri, 27 Oct 2023 14:10:14 +0300
Message-ID: <87v8as5njd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
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

On Fri, 27 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Darkscreen detection checks if all the pixels of the frame are less then
> or equal to the comparision value. The comparision value is set to 256
> i.e black. So upon getting black pixels from the pipe, the dark screen
> detect bit is set and an error message will be printed.

Okay, this still describes *what* the patch does, but not *why*. Why do
we need this? What for?

(Please just reply here for starters, instead of resending.)


BR,
Jani.


-- 
Jani Nikula, Intel
