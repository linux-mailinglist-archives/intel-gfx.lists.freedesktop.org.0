Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B72C310B8C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 14:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71996E328;
	Fri,  5 Feb 2021 13:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9AB6E328
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 13:09:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23797957-1500050 for multiple; Fri, 05 Feb 2021 13:09:05 +0000
MIME-Version: 1.0
In-Reply-To: <SN6PR11MB323124F642BB6673B40E2923E7B29@SN6PR11MB3231.namprd11.prod.outlook.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
 <20210115130110.2650-1-saichandana.s@intel.com>
 <161071683896.19482.14027072347342754368@build.alporthouse.com>
 <SN6PR11MB323124F642BB6673B40E2923E7B29@SN6PR11MB3231.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "S, Saichandana" <saichandana.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 05 Feb 2021 13:09:04 +0000
Message-ID: <161253054434.17965.6315708704973801912@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and PM_RES
 registers
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting S, Saichandana (2021-02-05 13:05:20)
> 
> 
> > -----Original Message-----
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > Sent: Friday, January 15, 2021 6:51 PM
> > To: S, Saichandana <saichandana.s@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>; S, Saichandana
> > <saichandana.s@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/debugfs : PM_REQ and
> > PM_RES registers
> > 
> > Quoting Saichandana S (2021-01-15 13:01:10)
> > > +static int i915_pm_req_res_info(struct seq_file *m, void *unused) {
> > > +       struct drm_i915_private *i915 = node_to_i915(m->private);
> > > +       struct intel_csr *csr = &i915->csr;
> > > +       u32 DC9_status;
> > > +
> > > +       if (!HAS_CSR(i915))
> > > +               return -ENODEV;
> > > +       if (!csr->dmc_payload)
> > > +               return 0;
> > > +       DC9_status = intel_de_read(i915, PM_RSP_DBG_1) &
> > > + PM_RESP_DC9_READY;
> > 
> > A read without waking the device up? Wait until IGT sees this.
> > [wrap with with_intel_runtime_pm(&i915->runtime_pm, wakeref)] -Chris
> >
> >Using wakeref, doesn't allow i915 to go to suspend state, further blocking display DC9 entry. Thus wakeref IGT test will fail.
> >[S, Saichandana]

And yet you cannot read this register without waking the device up.

Do we conclude that this is a bad test design?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
