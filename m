Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOcGA9D5rmliLAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 17:48:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D55B23D074
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 17:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD8110E55A;
	Mon,  9 Mar 2026 16:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IXRTXnUO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDAF510E55A;
 Mon,  9 Mar 2026 16:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773074893; x=1804610893;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Mx3ginhVXJLSQ6R5HnrlQFHXnF3aHadQoRXqHj8mk+Y=;
 b=IXRTXnUOg3r5wUOjb3tllaq6+k16uDTWjbFfZfI7cBKYKdk8uyA/tYId
 oLDJCvc98oR2U0HYrfRHE/Ytw3wobsVa01lUvsHJ2AVFIGxepqJouDUxD
 ikNnounnXukLzTtxVU1I8q9dcvg/GMeEBWuNINssXQeF764g80MQvC2N8
 31uL0LRfg//1k3ST1x1JVCBLgKaCFhQbu/d+y8td4vf9TuO/h3W+x+sBw
 zPv7sE/CRKsYCaU2saGnWNG8A9FRnblKpV8uPG+FYNUBkA2Nplrcz/6o3
 T+Sgdo7alhiW3DF1eq+qy5UaJx1YQDmEZD8xGNxVZjm9f2dvDArVGHhGU w==;
X-CSE-ConnectionGUID: /BUJO86oTpmbyBY3PNX/JA==
X-CSE-MsgGUID: gC/Cf+awRDOiFDxjqbVg/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="84741326"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="84741326"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 09:48:13 -0700
X-CSE-ConnectionGUID: mi2RXe3gSeWJEK1DzN0O4w==
X-CSE-MsgGUID: 3usXzaCMRoCb/lSSQ9t2+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="224507555"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 09:48:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 09:48:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 09:48:12 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.25)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 09:48:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xla9TNAWe3TO0ZaXLMFBX2ZdlXJsQUydBr08faM/R+4dADibqsRRbWl71rLg3d8YiLKxEVfViOiyAxzRQJmD+oF/b0q2OXfIacHrUoDJTMhU6g02tk3MH6iCrOjNly1FnbCRxXXa5Wxbn/eLEd08IxT6VlTBWgRBdiEOXVRseXX8N42t6Vtun2g+/1WqyVodPb1DKQ5owC9bOvyuYJWxYns9dRLo0S5ws/9y6zVPM029kuKAZyePQhT28kwmF05Y61xTjZOSxCQ+e8g8y69iPKpQ6lk4f7AlHFdFchGJH+JphuVIFPjLjmdVugYPKDjKXNvSpOXIYiqrxPTcgUSSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZGsvYHZv6qjigxLgv0QIwH3Esik2BZDuSJjPr2n0yQ=;
 b=WNmF/+2iK4HJR1pBjGxwvJbz2XbOXGeQC+Ywf+ZGeehBWB6mkagnbOqntlE3zH1BGUd2tQjZSxAhH66a9d2viJUVEzgpGpxTGP6+oKmz1KoiOv9o7UmtLYOFHh1X1Odo9+aTlQ7knD76HxZJTYD6lphBhYlcUkf4ifg55/7ngEcEAd64Ljr8+qr1SnIbZ2BaQXvFcWsoEQs+IWVxAMGtkSrryZBnK9D2XmjzVemXgNjBCWSXPtnX6DRmc5OPl58G2hVKy0aYGIp9sMAxXnv1o9T5GbuqWkv7KtDDT/20zBQ5hz4a866SBeDFB+dqkmZpl5xjWDoHyXicE1QKe951Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.10; Mon, 9 Mar
 2026 16:48:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9700.010; Mon, 9 Mar 2026
 16:48:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Tao Liu <ltao@redhat.com>,
 <stable@vger.kernel.org>, Jani Nikula <jani.nikula@intel.com>
Subject: [CI] drm/i915/dmc: Fix an unlikely NULL pointer deference at probe
Date: Mon, 9 Mar 2026 18:48:03 +0200
Message-ID: <20260309164803.1918158-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0009.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5186:EE_
X-MS-Office365-Filtering-Correlation-Id: 26a64278-3f6b-4909-f61c-08de7dfba502
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: p5HeuLE7iLon1XDPbez27QOGq/Kk19ASVP3NOiY2WpCa7RYoa0vW3kz47opuhQcVuDJyh+IuX/EylQfNYrMkOc/tQukgwVjAE14eQ0Yagy/KFFDIxwDmV7uQ4EdR87bKblYjUJjvCNIhEJ1h8uSWlO+zsOa/FrOs+c5Z+ozOsQIaH2FqQpa9xu6TDFN+vXjGmH2iIp4jjSNXgTmTsH0Cu/EfxsHuyDR1NhZ5/oCK5gPu9EVo99E0K495ZWLVf9yDfHUYEYey6Y7MahP72SDMoocAi7rlx+QgyVrXmUOfou4VjF8TSE5BTe3do20YRdqU9Q7vZTaBlgaUJP+d+nQjur3lwr/goqPWCXTVBh4iJBo24jw+qItmsFVk82lRsp0ybp147LumCcfuxe2VsyP44c3sE13p2wgxXHd3zafxiC4BrCZuQ6WdU+X5KhEe9x+C2W34xs9Dga6IjqRuuoOccHUX/kh1LwdF4+VdjRUJIVHQkNSKJEL5fsruCosF0YqxUFLwGn6FFDoAJfpjUX+Uowfsm/nL8nxT1czjIj/0LBePKpca4ZB5PwfW8IBGXujPpZ3GTVAgbk3Qc2L6Nc2xzArL21y6ybo8LUkmCs+t2A7ZQcWhcKshhleCZfVFgONFUJ4t39/gIghtHziutMIBy5aPiFFATza7NVGEHaUC/xwpH3umeSIyY/XW0GMEybv/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BAtfvUEtG/8ct/ENqtHL7lFjObg609o47qHo5uqyg9Inj5XgTL2Dn/OFCoy6?=
 =?us-ascii?Q?UmNe8mFv0/ZKKo1QKOQxQu5jUowzU4HeWGS+b9IIq8jSAP8w7MEYpqPvkL/X?=
 =?us-ascii?Q?Makcd8oyA4aGZfF/DOkXh5oFM8FoFF+2alz4aKRyxfUQB/A11rlUemmV+z7o?=
 =?us-ascii?Q?gSxGnYfAHQPjNmRNPsPObqVaLBnomo8niT+EVcIPtKK250qsnGFtChazx4+i?=
 =?us-ascii?Q?XcDy7cW6EhAH2oPvgtBUUCdYdK2RadGS9aiby+mE/jgXT2PxZPTpPqNuEG8W?=
 =?us-ascii?Q?BWWLDY0Wl7zrUqH3C0nkTjdf84qPeAUtbqLRvQqpORZPcLUbWWCKemKYJ3LX?=
 =?us-ascii?Q?IN6UPDUMjHt6SBAznqS98Ps6ur6/l+WiHUG/osjr6oqbCbKxPeVC3gbzY9SO?=
 =?us-ascii?Q?c51dIJulAbSmFWKtgC3EdSKA/5va+MS7tKAEzLjE6f5f+olwWPfeke4lfvzU?=
 =?us-ascii?Q?ozmgNgX++BWz8wtx2y8lkEHO6fLiELAuc+GPmNGQ8LeiKb0THk++p5ARHDjB?=
 =?us-ascii?Q?Bhna3+OngrQUyf1rBf5vTLbsT7H1ciLryisn59s/HWuhINqhwRbaP5OC8qCM?=
 =?us-ascii?Q?FnvFXc4Mi9OtoxI4iJSWTbHEnJ6SFSsfNX8RRqmUQxwLFBZxfS5Cg+F93YPt?=
 =?us-ascii?Q?97nqSaailtjLXqvIcMZ0+0T0ke2JPWy6aAnm6dNlm/2AQdqgyuzaf0jcckGE?=
 =?us-ascii?Q?U4Jr6pQW/7eHKnUXMVdAnW6s3S+gDaM4K0Sl+wFp+Rx1T6BA+qRg4JZurpup?=
 =?us-ascii?Q?OgPMAIfYGqjdfGPY5nGmPS0IpJva3ww86+OPAabZVQrhCt/jSMlJtAU7ilEJ?=
 =?us-ascii?Q?XfIOBNjLtCESzaixdYAXil7S7l41TeicHN1Qi9eEmQXR0GZlLX4OXWGwqVUc?=
 =?us-ascii?Q?39uoGCAYsTgq6WRYu5Wv6sc07aSgKgS3Az1rU1XEjRdxgufUjiZ4L73Z2hfE?=
 =?us-ascii?Q?IbDehn8ko6jw3jFjzgt75Ss0aAtfGwf4AqJNJY+eud+z7bluHyoMZJWKPd0m?=
 =?us-ascii?Q?FFL3Jhr4BNd0g+4yAe6vgAVhMvcHLVWKL9K7M+V5Ncdk1+oD8AQPPf9YHWZG?=
 =?us-ascii?Q?W72Zrmqd8Y+YSV/kTdaYTO/5VO7WFsFICQJNQwQyUA+tB1PUp8ZylwAObRHR?=
 =?us-ascii?Q?qc7j+PGh82qSYmKksvDvlBlM48X3SBaivD0S0TLqv+QXl23QAVxQU1VPt96j?=
 =?us-ascii?Q?3/RAlhq518biaEuEYsSUbOTZz0QPwgcDr8MIuqHDuEvMS2dF7jXxeeGkjIUR?=
 =?us-ascii?Q?g8wnzOKJ0NmA2Z13priowxresueNB0z6Ie+FeKxKbj1eMJqK5FNoFu4zVbx7?=
 =?us-ascii?Q?xO99TGwcMNXFDOTtB7nf9xeBMLV92WOhZrVBNmbGcFTcJiBAqo6qWAp0IQ/D?=
 =?us-ascii?Q?TgLLwE492TFRBDzNH4mYnA+t45WYgafRWk5/QE2OmwLT96EbjWRJFaxPkyx4?=
 =?us-ascii?Q?ALrfvg2HRu+PzhGcfyr6thgx5dcVzm/dQzkuobFBchdaaLmQwL6ss47QTeiZ?=
 =?us-ascii?Q?RD5ct1FLibDMsKhDLs05SxPwFVJiv95tiJ1fGc0aeMgs0lpRspxHm0d/Fxv+?=
 =?us-ascii?Q?LwRsIr500DH54BZc5GxAIiyy13Mk0VAH7GVJ8CYt60fXjombuvTsBmjeBP4c?=
 =?us-ascii?Q?mnNcpg0T3JxPhA1RkcUYJ+CqdJCTfoi6VhF4a8Z1a0m1Sz/iCwbv+imvBTr1?=
 =?us-ascii?Q?X0M/TiBM6N3zXvFooULMJldXz/pm3UIEUkwa1VJStjFhkek8yYIRVbBu5vzD?=
 =?us-ascii?Q?CKAYMt0xZg=3D=3D?=
X-Exchange-RoutingPolicyChecked: dvlucT+oMfDHthlLpJPJhBwm3dG6vO7+xxpWvQzvVBCfO/N4kU6pxoX5ILOuZVBIiVldXTrDq9/kLKIIgiwgpfDCL6ZERZIw/QETMrIKOUaDZowEbs+pQzeQSOLzpn0TdF08kA1Qer3Y+d6wlU6eYz4EgxhRsAN6i1OPmF87jsQatYy0XOvwLhOJMqAAhbkjl8/b2WV2fdNWz3fU9JENP1mg9Ffia0eNlR4AyYY+v4mgy2Y20q77v29Prle+S/YkLNoxAeZXj08V3oAIjZ2FkQikhfkD3h1HwyOKg1CEunWDlzBN9ein2cys8RUx6v7ChNHIirc4eddsFQPAAKwfmw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a64278-3f6b-4909-f61c-08de7dfba502
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 16:48:09.3848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gARvEDF2HUR1TEXOVS2GdgF63gETC4HtDKPuwVAAwDLULvditd/9l0q+x6AtMECyWLKUGTGY/cJALZDidr1SGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 5D55B23D074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
initialized, and dmc is thus NULL.

That would be the case when the call path is
intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
intel_power_domains_init_hw() is called *before* intel_dmc_init().

However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
conditionally, depending on the current and target DC states. At probe,
the target is disabled, but if DC6 is enabled, the function is called,
and an oops follows. Apparently it's quite unlikely that DC6 is enabled
at probe, as we haven't seen this failure mode before.

It is also strange to have DC6 enabled at boot, since that would require
the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
the driver stopping / reprogramming the firmware is a poorly specified
sequence and as such unlikely an intentional BIOS behaviour. It's more
likely that BIOS is leaving an unintentionally enabled DC6 HW state
behind (without actually loading the required DMC firmware for this).

The tracking of the DC6 allowed counter only works if starting /
stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
DC6 state (since stopping the counter requires the DC5 counter captured
when the counter was started). Thus, using the HW DC6 state is incorrect
and it also leads to the above oops. Fix both issues by using the SW DC6
state for the tracking.

This is v2 of the fix originally sent by Jani, updated based on the
first Link: discussion below.

Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d9991217@intel.com
Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Tao Liu <ltao@redhat.com>
Cc: <stable@vger.kernel.org> # v6.16+
Tested-by: Tao Liu <ltao@redhat.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1e03187dbd38a..f855f0f886946 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 			power_domains->dc_state, val & mask);
 
 	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
-	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
+	dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
 	if (!dc6_was_enabled && enable_dc6)
 		intel_dmc_update_dc6_allowed_count(display, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c3b411259a0c5..90ba932d940ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
 		return false;
 
 	mutex_lock(&power_domains->lock);
-	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
-		      DC_STATE_EN_UPTO_DC6;
+	dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
 	if (dc6_enabled)
 		intel_dmc_update_dc6_allowed_count(display, false);
 
-- 
2.49.1

