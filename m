Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CF86E1F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C9810E0D5;
	Fri, 14 Apr 2023 09:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADA210E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681464034; x=1713000034;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=o4poxk23YCHR61GVa/tfC9OBmGYMB0QEKxbpHloL6UI=;
 b=TVmv5vV7C8K5VNqUXLmL3n7StLfI/GuoZCK2JDCFocL1MMEN3dC1pMBC
 6Nnfx7nw+a88KQRo1kVvaQbMrptPmeHE7OXpJ6jhtT+XPXW3aKSr2foSS
 rZWQKhFm9KLI+Geo5hv0wD9a+tLpnSitZ8Z36NMTB3hYoQRD72f0iYaBx
 pnL017OOEokbSwxsgbFCiRLtvtoOQSyxUoTmQMj3Ar2c7ls8n6DquJ80m
 NCg3UNAK0WtVLv+beRQEjAW1g8AKQY7piNgX4pCw0hHCDWUUvlKm/QW/M
 a3ZVSPlDXMX7NWsmMUpzpnqNRew1Ek1p+9SnrD398xlWSDd6QnQHKadpP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346255105"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346255105"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754394910"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754394910"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:20:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168139203649.4412.3287681227496282868@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1681379167.git.jani.nikula@intel.com>
 <79b7928790ba7e006bd0673da84ce5cc6e5db478.1681379167.git.jani.nikula@intel.com>
 <168139203649.4412.3287681227496282868@gjsousa-mobl2>
Date: Fri, 14 Apr 2023 12:20:29 +0300
Message-ID: <87ttxig6qq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/display: move modeset
 probe/remove functions to intel_display_driver.c
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

On Thu, 13 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-04-13 06:47:31)
>> +/* interface for intel_display_driver.c */
>> +void intel_setup_outputs(struct drm_i915_private *i915);
>> +void intel_sanitize_watermarks(struct drm_i915_private *i915);
>
> I can't find the implementation for this one and it seems it is not being called
> anywhere.
>
> --
> Gustavo Sousa
>
>> +int intel_initial_commit(struct drm_device *dev);
>> +void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
>> +void intel_update_czclk(struct drm_i915_private *i915);
>> +void intel_atomic_helper_free_state_worker(struct work_struct *work);
>> +enum drm_mode_status intel_mode_valid(struct drm_device *dev,
>> +                                const struct drm_display_mode *mode);
>> +int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>> +                  bool nonblock);
>> +int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *_state);

This one's actually unnecessary too, a declaration for it was already
added earlier.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
