Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 495091B21C0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4D46E8EB;
	Tue, 21 Apr 2020 08:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CECF6E8EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:35:13 +0000 (UTC)
IronPort-SDR: ynBsRv2SrVTfX2t0CHmRUBlYkMYpo3iiuk1sY3SrrlxGvvsFXs1VHOnimSi5ecSZOent+xP90J
 sSBwymfwYE/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:35:13 -0700
IronPort-SDR: HlD6yie1GwnF3GfGgu4THZgQHuz/5N84S5b4brabfnAyH+Ibg2OLV7DkDPPRtjXXmqlUpyVUYv
 euR6IOI6k3xg==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="429454088"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:35:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 21 Apr 2020 11:35:08 +0300
Message-ID: <87d081z16r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/18] Prefer drm_WARN* over WARN*
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

On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> Now we have struct drm_device specific drm_WARN* macros which include
> device information in the backtrace, so we know what device the
> warnings originate from.
>
> This series converts WARN* with drm_WARN* where struct drm_device
> pointer can be extracted.

I think I pushed all the patches that I didn't comment on separately,
and that still applied.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
