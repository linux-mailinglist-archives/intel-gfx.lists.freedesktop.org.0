Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261F71A184B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72AC06E92D;
	Tue,  7 Apr 2020 22:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C606E92D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 22:43:58 +0000 (UTC)
IronPort-SDR: 5VyMkTWE7Q5BpFcN+dO5Jpg7pxl59k5t0HmgIRO2EBSLIeUwzruc/KehzL8L926QJM1Y6gG/Pk
 2v97ljY8sP/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:43:57 -0700
IronPort-SDR: 00Ee700mUVa94WAUoI7tLSgyqKO1KKSyZeix+ET/vDWlj4CjQYOchQ7K+NNjCdGFT3IlHQeOy7
 xUzMAPIIxCYg==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="243885374"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:43:56 -0700
Date: Wed, 8 Apr 2020 01:43:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200407224345.GF23597@ideak-desk.fi.intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
 <20200407214000.342933-4-jose.souza@intel.com>
 <20200407220346.GC23597@ideak-desk.fi.intel.com>
 <b0f5944b4cddb06f3f7bba3b5a9d019eb1a8c7d4.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0f5944b4cddb06f3f7bba3b5a9d019eb1a8c7d4.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 4/8] drm/i915/tc/icl: Implement TC cold
 sequences
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
Reply-To: imre.deak@intel.com
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 08, 2020 at 01:20:02AM +0300, Souza, Jose wrote:
> [...]
> > > +	drm_dbg_kms(&i915->drm, "TC cold block %s\n", ret ? "failed" :
> > > +		    "succeeded");
> > 
> > You missed turning this to an error.
> 
> Can we postpone this at least for ICL?
> 
> The ICL machines in CI don't have the IFWI that have this PCODE
> command, so it is failing.  I have asked to CI team do update but it
> is going to take a while. VLK-9040

Ah, yes it's ok. Please also add a FIXME: then.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
