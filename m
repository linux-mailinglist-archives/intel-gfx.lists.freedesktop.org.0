Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5225037A04E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 09:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7E96E9DC;
	Tue, 11 May 2021 07:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827576E9D5;
 Tue, 11 May 2021 07:05:28 +0000 (UTC)
IronPort-SDR: UAutco2KW744zYWbDOmkxolVjnFn6zMa7K9dgND8zFD1hdinkQeIKebl2K78oInZzsB9aBXDHL
 2aVGTOkCUfWg==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="199426746"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="199426746"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 00:05:27 -0700
IronPort-SDR: hh35SLA9NsSXcIAkKsRmTz4fGM3LJ701A5s98ePVIVbSepPXsKrbp7Z9UljauOgIpTo2BRVpCY
 pg+RqwNt2j6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="536847702"
Received: from kuha.fi.intel.com ([10.237.72.162])
 by fmsmga001.fm.intel.com with SMTP; 11 May 2021 00:05:18 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Tue, 11 May 2021 10:05:17 +0300
Date: Tue, 11 May 2021 10:05:17 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YJosrajgV9zem5lr@kuha.fi.intel.com>
References: <20210505162415.531876-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505162415.531876-1-hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm + usb-type-c: Add support for
 out-of-band hotplug notification (v3)
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
Cc: dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 platform-driver-x86@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 05, 2021 at 06:24:07PM +0200, Hans de Goede wrote:
> Hi All,
> 
> Here is v3 of my patchset making DP over Type-C work on devices where the
> Type-C controller does not drive the HPD pin on the GPU, but instead
> we need to forward HPD events from the Type-C controller to the DRM driver.

These look good to me. I can also test these next week if needed. I'll
give my Tested-by tag after that if these haven't been taken by
anybody by that.


thanks,

-- 
heikki
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
