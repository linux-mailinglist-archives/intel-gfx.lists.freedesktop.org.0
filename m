Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC27D6E1EED
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B00B10E16C;
	Fri, 14 Apr 2023 09:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DB610E16C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681463012; x=1712999012;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TcDMDYdqR9HspP1n93RETk9hNjppZI0Gp8Wow0qahPc=;
 b=fTj8iw+tTLJcovuPePloyuAeMPthWPLVBXrIBJOkT6OJufYqeT+jX4F1
 T+LwCboqqzuWvqGVLQLsIAvUYDthSny8SURr9EqaCOxqRdfVAfPFXT9eK
 srX9lVCb+n03N7cDamqHCbR12cGU4BKEb63Gian0DqhUWaXZGdL8A85uN
 cQXppvEMr/h2DZ/ECT+uHeQ2mYVSx0SAYWf4vdzVP+7HelJ8uyv4Lp4IZ
 g4wPgr+L7hNGxPZVA642DpviUWGV71K8sWVMf8lpZf0oXVatAjwe7i7Z8
 CYWViK8mZ3loxrCR2Mu7Kqa649Wcy5GGypjA/WRk4ZWBJun778qeYucZ6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="341918851"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="341918851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="720210766"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="720210766"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:01:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168139203649.4412.3287681227496282868@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1681379167.git.jani.nikula@intel.com>
 <79b7928790ba7e006bd0673da84ce5cc6e5db478.1681379167.git.jani.nikula@intel.com>
 <168139203649.4412.3287681227496282868@gjsousa-mobl2>
Date: Fri, 14 Apr 2023 12:01:41 +0300
Message-ID: <871qkmhm6i.fsf@intel.com>
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

Rebase leftover, thanks for catching this.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
