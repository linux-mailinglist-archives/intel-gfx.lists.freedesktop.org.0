Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBBB150383
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 10:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C947A6EB81;
	Mon,  3 Feb 2020 09:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6470F6EB81
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 09:42:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 01:42:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="223880884"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.5.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 01:42:25 -0800
MIME-Version: 1.0
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68EBA55F4@fmsmsx120.amr.corp.intel.com>
References: <20200130165721.20342-1-akeem.g.abodunrin@intel.com>
 <20200130165721.20342-3-akeem.g.abodunrin@intel.com>
 <158046432762.8720.11526385420365501697@jlahtine-desk.ger.corp.intel.com>
 <AD48BB7FB99B174FBCC69E228F58B3B68EBA55F4@fmsmsx120.amr.corp.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>, "Balestrieri,
 Francesco" <francesco.balestrieri@intel.com>, "Bloomfield,
 Jon" <jon.bloomfield@intel.com>, "Dutt, Sudeep" <sudeep.dutt@intel.com>,
 "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>, "Kuoppala,
 Mika" <mika.kuoppala@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Vetter, Daniel" <daniel.vetter@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 03 Feb 2020 11:42:22 +0200
Message-ID: <158072294270.7442.4804599326111818519@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gen7: Clear all EU/L3 residual
 contexts
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

Quoting Bloomfield, Jon (2020-01-31 17:45:02)
> Reducing audience as this series is of high interest externally.
> 
> I fully agree with Joonas' suggestion here, and we have been looking at doing just that. But can we iterate as a follow up patch series? Putting in the infra to support igt assembly from source will take a little time (igt assembler doesn't like the source right now, so it looks like it will need updating), and we are under pressure to get this security fix out.

In order to merge upstream, we need to be able to show the
readable source code with appropriate license for the
execution kernel and provide compiling instructions.

Compiling with publicly available tools is enough and at
merge time it doesn't necessarily have to integrate with
IGT fully due to security aspect.

If we can't fulfill those requirements, then the right place
for the blob is in linux-firmware.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
