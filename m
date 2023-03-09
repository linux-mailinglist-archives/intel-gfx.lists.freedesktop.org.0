Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C62C6B31EE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 00:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FCA10E1E5;
	Thu,  9 Mar 2023 23:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9AC810E1E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678403345; x=1709939345;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zUW79gre5v5+dDfjQvwSiy8q3rb142hzFaNkTOsyXrc=;
 b=X5SBthcjziBMJXqTzj/ep2hg3tiz4NWWDOpuL7xvMfJvRH9w1VGhalL8
 91NZZ6jT2pihkhUe74OBEc7FtZBler2mlmkey0xtPqKg6EDFWX2BXdvls
 2OKGqTffAbl88ywszfhHLKHzeUMHSgFIdx5Cpnb5/J9mtxAJXW4zbzf1K
 e15EM0YjwtvlY86Bx8OzP2W+RwK/tqq1PxQlSoi4upuZTZ5YtRN4Zo96g
 c5zukbb84qq7IK0N4coafZE8ecufwvGDntZHQUrJI5BfIgk65L3LNga2L
 iEoDr7hbby5R91TKh3VjTNXQBQOtANn+QaVIdpc8roATW40hbzoXNTIat Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="316990348"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="316990348"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:09:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="1006910050"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="1006910050"
Received: from pmezinca-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.71])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:09:03 -0800
Date: Fri, 10 Mar 2023 00:08:59 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <ZApnCxvzMeh5EL/2@ashyti-mobl2.lan>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-2-radhakrishna.sripada@intel.com>
 <ZAoJkJ5VwGRiUDTD@ashyti-mobl2.lan>
 <DM4PR11MB5971A58978662F23B9004A8A87B59@DM4PR11MB5971.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB5971A58978662F23B9004A8A87B59@DM4PR11MB5971.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Radhakrishna,

> Since most of the comments aligned with Matt's suggestion pushed with Matt's r-b.

OK, but next time, please hold on a bit as I might also have had
disagreements on your answers or I want to see it tested again
with the new changes.

It's not the case as I would have r-b it anyway and the changes
were trivial, but next time, please give it a bit more time until
all questions are answered.

> Thanks you for the review.

You're welcome :)

Thanks,
Andi
