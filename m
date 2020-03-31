Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF5B1992A3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 11:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF82C6E5C8;
	Tue, 31 Mar 2020 09:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADF76E5C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 09:45:40 +0000 (UTC)
IronPort-SDR: keiO9QxFJdkoa9QN7GF7bupyrtjhWzzcuB2y51IVSVpq1Oeh9P+JYhd8j8RRls0fGZV+nMGp2B
 774XlXaxrSeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 02:45:40 -0700
IronPort-SDR: pzC3o+GLn0C5+X1HnHWsLmE8y28IpVyFV4MwHiUvNZb5oMF7PINcjghy89xmdhq4VmQ9z2Upjd
 qtpBExn+gYbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="359446617"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2020 02:45:39 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jJDSk-00043E-2s; Tue, 31 Mar 2020 12:45:38 +0300
Date: Tue, 31 Mar 2020 12:45:38 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Melissa Wen <melissa.srw@gmail.com>
Message-ID: <20200331094538.GH9497@platvala-desk.ger.corp.intel.com>
References: <9e1e0051f2aaeeb4c3fbe9f54fee6b71f64876dd.1585582530.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e1e0051f2aaeeb4c3fbe9f54fee6b71f64876dd.1585582530.git.melissa.srw@gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/igt_fb: change comments with fd
 description
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

On Mon, Mar 30, 2020 at 06:56:36PM -0300, Melissa Wen wrote:
> Generalize description of fd since it is not restricted to i915 driver fd
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>

Reviewed-by: Petri Latvala <petri.latvala@intel.com>


Please send future IGT patches to igt-dev@lists.freedesktop.org
please.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
