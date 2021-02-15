Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C0231B4ED
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 06:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2690489EA3;
	Mon, 15 Feb 2021 05:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0D789EA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 05:13:11 +0000 (UTC)
IronPort-SDR: sdJuqGVF4yWn1E87F4kGt1SBd/EfNQ9tjVyTdLK+BNCpmyGNUir9uKLlYaHNq9Pj3C8+lZMfrB
 PvGb3Rnv4gog==
X-IronPort-AV: E=McAfee;i="6000,8403,9895"; a="181843681"
X-IronPort-AV: E=Sophos;i="5.81,179,1610438400"; d="scan'208";a="181843681"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2021 21:13:05 -0800
IronPort-SDR: Qx7XIVLSnHCSer6oWcZ6nQMj8SSs68vxubf/WD0I5NEU0pvItmp4zz8p0TY2mRqiyKzmZZ0zuV
 h/kOHAJ6XQ2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,179,1610438400"; d="scan'208";a="365573142"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga007.fm.intel.com with ESMTP; 14 Feb 2021 21:13:04 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Feb 2021 05:13:03 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 15 Feb 2021 10:43:01 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "S, Saichandana"
 <saichandana.s@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES registers
Thread-Index: AQHW/uhBgCEveweni0qsehja2GKSc6pUJSAAgASKmiA=
Date: Mon, 15 Feb 2021 05:13:01 +0000
Message-ID: <cbc011fff2a149659a14f55cc9cec4af@intel.com>
References: <20210115130110.2650-1-saichandana.s@intel.com>
 <20210209133154.31115-1-saichandana.s@intel.com> <87czx5cu99.fsf@intel.com>
In-Reply-To: <87czx5cu99.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, February 12, 2021 6:34 PM
> To: S, Saichandana <saichandana.s@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: chris@chris-wilson.co.uk; Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: Re: [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES registers
> 
> On Tue, 09 Feb 2021, Saichandana S <saichandana.s@intel.com> wrote:
> > This debugfs provides the display PM debug information like Time to
> > Next VBI and Time to Next Fill from Display Engine <-> PCU Mailbox.
> 
> We still lack a rationale for this and the test design. In past review, I got the
> impression that a) you need the wakeref, but b) grabbing the wakeref messes up
> the test.
> 
> What are you testing? What are you trying to achieve?
Earlier the rational was to use this debugfs to expose "DC9 Ready" bit to igt along with other
debug  attributes.
 As Chris commented it is a bad design of test, "DC9 Ready" bit is dropped from this patch.
Now this debugfs only serves the Display Engine to PCU mailbox debug attributes which can read
while i915 is active. Usually these DE <-> PCU req and res debug attributes retrieve by external tools
like jtag. 
Now this debugs only provides value addition to decode some of these debug attributes and print.
in readable format. 

Br,     
Anshuman Gupta.
> 
> BR,
> Jani.
> 
> 
> PS. You leak the wakeref and stay up indefinitely if csr isn't loaded.
> 
> >
> > V2:
> > Added a functional print to debugfs. [Jani Nikula]
> >
> > V3:
> > Used separate variables to store the register values and also used
> > REG_GENMASK and REG_BIT for mask preparation. [Anshuman Gupta]
> >
> > Removed reading of register contents. Replaced local variable with yesno().
> > Placed register macros separately, distinguishing from other macros.
> > [Jani Nikula]
> >
> > V4 : Used i915 as local variable. [Anshuman Gupta, Jani Nikula]
> >
> > V5 : Added wakeref to wakeup device. [Chris Wilson]
> > Signed-off-by: Saichandana S <saichandana.s@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h               |  9 +++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index d6e4a9237bda..29aaa41fdeec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -591,6 +591,29 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
> >  	return 0;
> >  }
> >
> > +static int i915_pcu_pm_req_res_info(struct seq_file *m, void *unused)
> > +{
> > +	struct drm_i915_private *i915 = node_to_i915(m->private);
> > +	struct intel_csr *csr = &i915->csr;
> > +	intel_wakeref_t wakeref;
> > +
> > +	if (!HAS_CSR(i915))
> > +		return -ENODEV;
> > +
> > +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> > +	if (!csr->dmc_payload)
> > +		return 0;
> 
> Leak.
> 
> > +	seq_printf(m, "Time to Next Fill : 0x%08x\n",
> > +		   intel_de_read(i915, PM_RSP_DBG_0) &
> PM_RESP_TTNF_MASK);
> > +	seq_printf(m, "Time to Next VBI : 0x%08x\n",
> > +		   (intel_de_read(i915, PM_RSP_DBG_0) &
> PM_RESP_TTNVBI_MASK) >> 16);
> > +	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
> > +		   intel_de_read(i915, PM_RSP_DBG_1) &
> > +PM_RESP_SEL_EXIT_LATENCY_MASK);
> > +
> > +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > +	return 0;
> > +}
> > +
> >  static void intel_seq_print_mode(struct seq_file *m, int tabs,
> >  				 const struct drm_display_mode *mode)  { @@
> -2128,6 +2151,7 @@
> > static const struct drm_info_list intel_display_debugfs_list[] = {
> >  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
> >  	{"i915_power_domain_info", i915_power_domain_info, 0},
> >  	{"i915_dmc_info", i915_dmc_info, 0},
> > +	{"i915_pcu_pm_req_res_info", i915_pcu_pm_req_res_info, 0},
> >  	{"i915_display_info", i915_display_info, 0},
> >  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
> >  	{"i915_dp_mst_info", i915_dp_mst_info, 0}, diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 224ad897af34..93d319bf80fd 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -12525,4 +12525,13 @@ enum skl_power_gate {
> >  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
> >  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
> >
> > +/*These registers are of functional registers for PM debug request and
> response registers*/
> > +#define PM_REQ_DBG_0				_MMIO(0x45284)
> > +#define PM_REQ_DBG_1				_MMIO(0x45288)
> > +#define PM_RSP_DBG_0				_MMIO(0x4528C)
> > +#define   PM_RESP_TTNF_MASK			REG_GENMASK(15, 0)
> > +#define   PM_RESP_TTNVBI_MASK			REG_GENMASK(31, 16)
> > +#define PM_RSP_DBG_1				_MMIO(0x45290)
> > +#define   PM_RESP_SEL_EXIT_LATENCY_MASK
> 	REG_GENMASK(2, 0)
> > +
> >  #endif /* _I915_REG_H_ */
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
