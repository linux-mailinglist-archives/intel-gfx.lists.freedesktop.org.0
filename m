Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4768F2F7C5A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 14:20:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA656E3E5;
	Fri, 15 Jan 2021 13:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128526E3E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 13:20:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23606593-1500050 for multiple; Fri, 15 Jan 2021 13:20:40 +0000
MIME-Version: 1.0
In-Reply-To: <20210115130110.2650-1-saichandana.s@intel.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
 <20210115130110.2650-1-saichandana.s@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Saichandana S <saichandana.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 13:20:38 +0000
Message-ID: <161071683896.19482.14027072347342754368@build.alporthouse.com>
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
Cc: jani.nikula@intel.com, saichandana.s@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Saichandana S (2021-01-15 13:01:10)
> +static int i915_pm_req_res_info(struct seq_file *m, void *unused)
> +{
> +       struct drm_i915_private *i915 = node_to_i915(m->private);
> +       struct intel_csr *csr = &i915->csr;
> +       u32 DC9_status;
> +
> +       if (!HAS_CSR(i915))
> +               return -ENODEV;
> +       if (!csr->dmc_payload)
> +               return 0;
> +       DC9_status = intel_de_read(i915, PM_RSP_DBG_1) & PM_RESP_DC9_READY;

A read without waking the device up? Wait until IGT sees this.
[wrap with with_intel_runtime_pm(&i915->runtime_pm, wakeref)]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
