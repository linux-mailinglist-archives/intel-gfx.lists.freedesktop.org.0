Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC651BF850
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 14:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2896E45C;
	Thu, 30 Apr 2020 12:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C267D6E45C;
 Thu, 30 Apr 2020 12:38:54 +0000 (UTC)
IronPort-SDR: 2PRj69Ef3VIGyKc16PbVjFDuSYy8qj12wXccyEq1bobvkEmniCkPlC+f69sMxpve13GGgI/KCU
 hDY8xfxDIeXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 05:38:54 -0700
IronPort-SDR: cC0XENIOPghyQBCpfA6zgEIJz/kTBQul+Q6i/dTrR+bZ9MquYKqqh6PjRoGpxHq++IZEJrB2BP
 CTX+7msmKkQw==
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="432946879"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.83.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 05:38:51 -0700
MIME-Version: 1.0
In-Reply-To: <20200426024619.GA18545@zhen-hp.sh.intel.com>
References: <20200422051230.GH11247@zhen-hp.sh.intel.com>
 <20200426024619.GA18545@zhen-hp.sh.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Zhenyu Wang <zhenyuw@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 30 Apr 2020 15:38:48 +0300
Message-ID: <158825032839.70042.9192653087149521653@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PULL] gvt-next
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>, "Lv,
 Zhiyuan" <zhiyuan.lv@intel.com>, "Yuan, Hang" <hang.yuan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Zhenyu Wang (2020-04-26 05:46:19)
> On 2020.04.22 13:12:30 +0800, Zhenyu Wang wrote:
> > 
> > Hi,
> > 
> > Here's current gvt-next. This removes left non-upstream xen support bits
> > which will be kept out of tree instead. And several guest context shadow
> > optimizations from Yan.
> > 
> > Thanks
> > --
> 
> Ping for merge..

Pulled now. Thanks for the PR.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
