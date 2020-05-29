Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8AA1E77FA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 10:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5958C6E898;
	Fri, 29 May 2020 08:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E922E6E897;
 Fri, 29 May 2020 08:13:34 +0000 (UTC)
IronPort-SDR: Z+Ho7H6NPzpCSXRMTNwHpMqWEOmoCWJc09gPwXoAhn0DClid0B18niQX/+2a0yTqo+GHaiZnUI
 K26g4xx8Xcgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 01:13:34 -0700
IronPort-SDR: D2OwS10W8ZRNlx/6Re2YsoM7kJBRLFponE5d5dxkGBhZBaxQ/ruwwvpzbgjrVkk988jxA2/K/b
 SWs0rrYn6mJA==
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="443289103"
Received: from vtsikino-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.43.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 01:13:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luis Chamberlain <mcgrof@kernel.org>, keescook@chromium.org,
 yzaikin@google.com, nixiaoming@huawei.com, ebiederm@xmission.com,
 axboe@kernel.dk, clemens@ladisch.de, arnd@arndb.de, gregkh@linuxfoundation.org,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@linux.ie,
 daniel@ffwll.ch, benh@kernel.crashing.org, rdna@fb.com,
 viro@zeniv.linux.org.uk, mark@fasheh.com, jlbec@evilplan.org,
 joseph.qi@linux.alibaba.com, vbabka@suse.cz, sfr@canb.auug.org.au,
 jack@suse.cz, amir73il@gmail.com, rafael@kernel.org, tytso@mit.edu
In-Reply-To: <20200529074108.16928-2-mcgrof@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-2-mcgrof@kernel.org>
Date: Fri, 29 May 2020 11:13:21 +0300
Message-ID: <87d06n17mm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/13] sysctl: add new
 register_sysctl_subdir() helper
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, julia.lawall@lip6.fr,
 Luis Chamberlain <mcgrof@kernel.org>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 May 2020, Luis Chamberlain <mcgrof@kernel.org> wrote:
> Often enough all we need to do is create a subdirectory so that
> we can stuff sysctls underneath it. However, *if* that directory
> was already created early on the boot sequence we really have no
> need to use the full boiler plate code for it, we can just use
> local variables to help us guide sysctl to place the new leaf files.

I find it hard to figure out the lifetime requirements for the tables
passed in; when it's okay to use local variables and when you need
longer lifetimes. It's not documented, everyone appears to be using
static tables for this. It's far from obvious.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
