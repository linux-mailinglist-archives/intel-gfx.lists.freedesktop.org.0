Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6554924061F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 14:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5ADB89FF6;
	Mon, 10 Aug 2020 12:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15C289FF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 12:47:46 +0000 (UTC)
IronPort-SDR: QEpxC/bRkmC+be6b65cpkpdT8CBUiSP8Hnx5xzCWQkmjOfvaj9oqbFIou7JHpuN4urtvIjMU/K
 tOs9xqqKbOUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="133063803"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="133063803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 05:47:46 -0700
IronPort-SDR: /cqayQfmnm5y2P2wcdXvgUy96NooMiR09FpcnzmJQWagzzK2m8DgIV9W1PqcETLNUINVh7Z3ND
 jkkP7IJ9q3IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="317340704"
Received: from chadjitt-mobl1.ger.corp.intel.com (HELO [10.249.44.177])
 ([10.249.44.177])
 by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2020 05:47:45 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-11-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <71c29d96-e429-8dab-6870-8b9d30115308@linux.intel.com>
Date: Mon, 10 Aug 2020 14:47:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200715224222.7557-11-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 11/11] drm/i915: Add debugfs dumping for
 bigjoiner, v3.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 16-07-2020 om 00:42 schreef Manasi Navare:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> Dump debugfs and planar links as well, this will make it easier to debug
> when things go wrong.
>
> v4:
> * Rebase
> Changes since v1:
> - Report planar slaves as such, now that we have the plane_state switch.
> Changes since v2:
> - Rebase on top of the new plane format dumping
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 29 ++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
Series looks good. I think I'm not the right person to review this as I wrote those patches, if really required I can do this but it's best to get someone else to review, as I'm already the original author. :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
