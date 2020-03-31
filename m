Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2B19929C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F089E6E5C1;
	Tue, 31 Mar 2020 09:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6AD6E5C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 09:43:27 +0000 (UTC)
IronPort-SDR: rWIHGEpi0noLb5PmpIwx/6hmFhBMEgbHsEcY93+84XU4h5WnLmfWXN2kcw+f9nEqoigLXwsakd
 7d8yLQX8R76g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 02:43:26 -0700
IronPort-SDR: q0lppiglgledZOjg48+aFTVapw8RE4hI+3mTu38JcAclX7wWclDR10nNcV+uHdk4OehH3xltEL
 1nl1eaJ/DJVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="359446269"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2020 02:43:25 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jJDQa-00042X-DB; Tue, 31 Mar 2020 12:43:24 +0300
Date: Tue, 31 Mar 2020 12:43:24 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Melissa Wen <melissa.srw@gmail.com>,
 Martin Peres <martin.peres@linux.intel.com>
Message-ID: <20200331094324.GG9497@platvala-desk.ger.corp.intel.com>
References: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_plane_alpha_blend: Correct
 typo in the name and comments of a subtest
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
Cc: intel-gfx@lists.freedesktop.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 06:55:32PM -0300, Melissa Wen wrote:
> Typo found in word transparent.
> Correct the word transparant, replacing the last letter -a- with -e-
> (transpar-a-nt to transpar-e-nt).
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>


Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Martin, test rename, ack when cibuglog side is ready to merge this.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
