Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A401FCADA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 12:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E2A6E879;
	Wed, 17 Jun 2020 10:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9363C6E879
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 10:27:52 +0000 (UTC)
IronPort-SDR: 0nHQ3ate+4QLmVYmxxyMkGJtMoBrvXO7zBfEBzye5GhH2on5f/Zwu/Iztg2fODvraB1BOCi+aO
 UkJ9iOWiSQkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 03:27:51 -0700
IronPort-SDR: xiwAM+H7uhQ+C76LIuJfNl+8S1/foGOP+LMYBjWCSOSoJb2AYsgA05GKWVjpG/M3e5FejnR3lo
 elGwwEkt6VNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,522,1583222400"; d="scan'208";a="309435324"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2020 03:27:50 -0700
Date: Wed, 17 Jun 2020 15:47:15 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200617101714.GM14085@intel.com>
References: <20200617095001.19220-1-anshuman.gupta@intel.com>
 <159238873248.19488.1166033909635410870@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159238873248.19488.1166033909635410870@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: POWER_DOMAIN_AUDIO ref-count
 debug logs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-06-17 at 11:12:12 +0100, Chris Wilson wrote:
> Quoting Anshuman Gupta (2020-06-17 10:50:01)
> > Debug print for power domain audio get/put.
> > This will help to deubg the CI s2idle incomplete
> > failures.
> 
> Do we not already print the mismatching pm, and who we are unable to
> find a corresponding release for?
Thanks Chris for review comment,
Yes it is there, but POWER_DOMAIN_AUDIO get/put request initiated by
snd_audio along with i915. So in order to confirm if it is a bug from
snd_audio module we would require to track the get/put resuest from
snd_audio.
Thanks,
Anshuman Gupta.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
