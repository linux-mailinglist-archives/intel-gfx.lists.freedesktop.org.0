Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E4326471B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCBF6E92B;
	Thu, 10 Sep 2020 13:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9DC6E92B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:37:43 +0000 (UTC)
IronPort-SDR: TEMSd9myi3sy5Q3T8WwvAFf7OKEN6yE5/tyCc2oJi/AlpW30ztSYhY7Lur7rWG3Rb3L9qlmUT5
 xhlzYiClbBXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="155987811"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="155987811"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:37:43 -0700
IronPort-SDR: WngMZh+Kfk14QDN1tLXVonsiJ9C1DV2u2jTkOGiBpTiHIe7+4FxJqXrxpOEPhJSNOHnJ0DatfF
 xhR2k/o3+Uog==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="480891667"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:37:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Peter Vollmer <vollmerpeter@gmail.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <CALdu-zH+yh2X7OSVQ7aTW2Dj=rEMD2MRYighJ-YGdEp9W4AXYA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CALdu-zH+yh2X7OSVQ7aTW2Dj=rEMD2MRYighJ-YGdEp9W4AXYA@mail.gmail.com>
Date: Thu, 10 Sep 2020 16:37:42 +0300
Message-ID: <875z8l21nd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] i915: boot/load regression since Linux v5.7-rc1 on
 Iris Pro (Crystal Well)
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
Cc: Niklas Schnelle <niklas.schnelle@gmail.com>, peter.ganzhorn@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Sep 2020, Peter Vollmer <vollmerpeter@gmail.com> wrote:
> Hi,
>
> since kernel v5.7-rc1 my graphical output hangs on boot or if the i915
> module is blacklisted on modprobe.
> I've already found and extended a bugzilla
> https://bugzilla.kernel.org/show_bug.cgi?id=208737
>
> But sadly there has been little reaction so I would appreciate any
> help in further debugging or better yet resolving this issue.

Sorry, nobody in the team looks at kernel.org bugzilla except once in a
blue moon to close bugs and tell people to report bugs at fdo gitlab
[1].

BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
