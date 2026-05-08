Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oERFNYT4/WlilQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:51:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3F64F81D8
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C79710F532;
	Fri,  8 May 2026 14:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JgHr7Vly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBAD10F532;
 Fri,  8 May 2026 14:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251905; x=1809787905;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=FOHVStBrDcSlbwtY/dPPq6CEECCavNp4nPkFizpci9I=;
 b=JgHr7VlymsKgERuWj6Q4sh7JE9umdlAg6IEZtG8D7W8v1bPUBBFULka+
 wX/LbJK+F4Wgy1SgMR4bcLsfLcMD0543R3LvH9T4ORcFFVzIJlrlIK3/n
 hQ01hccY899QrIajIVslt15svWMzLk2Z4BPerWZILVwq+/34r/dM5FJlS
 9bLiWzcTULYw7i8WnOETy87tq4J8hT6NT7thUKxhBOea9YsbcYCr1EAD0
 DInlSyOtYO5fsZeMkhTO6ehMlG6WcH8VArehx2c5Fh9vwpd4XHSnUl2Ez
 Nc1YMQ2P67Fq6RI7TDlsKyXKB1oJWF6Wu1eAQJ/e89HaWApgR0zJx4n29 Q==;
X-CSE-ConnectionGUID: NTeUDr0oT1CgFKzOXzudQg==
X-CSE-MsgGUID: vUec7DmgRQeiNWLKz32HWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="79209712"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79209712"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:51:45 -0700
X-CSE-ConnectionGUID: fAalUfnnTAu4ol073zgJ9w==
X-CSE-MsgGUID: YOPH7hl5RuGzjUrCgY7CuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236721064"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:51:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:51:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:51:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.44) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:51:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aF/epkmoB8ZrxZI51N/U+W3Wh1PggrtfeRLWDVcm3oTuC1yowO8V72HWu8Q3hA7pq/bpsNoBoKJK89Mul5lerdulUJAIjawFLeVm//Dve68yppzuC1gZMvgoq2+45JcRJCyRl8hr6346VVkDjZjEmAehcds5YqRAuzAH0Ox0izaWqRrmKwMGFnhtXsAJFJSUSJplaGsoqfg+zXh2Ccl53EzikNlW69xlsLCkGXkKTf9oX2iBnyyBzLaRwURIlml54mzmP96/syGZTXsdikLM6pF0VmyreEHrOZwjK39Kv9gNfdsYvPJ2WQF4CRfBvG1ue9FRBkxa+N68a+JtHH3CEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R56myxNXVFkX3t5RpsRGJ+U2hCy+pZd6MvyCJpbD3HQ=;
 b=auSG6WmvPfUnxSuDEGENentHdZCsx/nXK9Lbd0jUqq5A948g263dC+2K4tiJGXMdrHsoXvP1gEHpAUZIA/ZkLN8go+v/p5ZCGJbYbpQGvluiu9tAQK4pAgCRWuQMAzEVXR1GzlklVtOG+KqvoNVPzMyG7kPLxHQGQc9rbFYOdRzcS4eXRx496IUehWr7N9DhVbl/z5F/iq0gExnEm1SARJ7+y2p0n7+zcZ7ON+gaSvfsEF6hS+qHcQfCCMyoj1OzIififhPl+WHd2cYMH934pYGoB6s2XzzjGO6MXRQTmkJ+O+ZSQIC5J9SOqLv+ywTJlVZfBLNtsMuweD57nCk2Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 14:51:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 14:51:41 +0000
Date: Fri, 8 May 2026 17:51:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 007/108] drm/i915/dp_link_training: Flush commits in
 debugfs entries
Message-ID: <af34eKkcjeDlGX4x@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-8-imre.deak@intel.com>
 <159abd8f9ae013230c8d997ae3c949f79ada2100@intel.com>
 <af3mfZ6rFQDw3gyF@ideak-desk.lan>
 <03c8293f6b259f7352190df0433e72903530cee7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <03c8293f6b259f7352190df0433e72903530cee7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F67E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::3b9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB5909:EE_
X-MS-Office365-Filtering-Correlation-Id: 60ca971b-f929-4327-eba5-08dead1150de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: zwcDWSu2Oya1E+OAR+7HXReRSSOf0UHKVUNssxqlfDBF4Q8fkHVuJu2QYAEoQ+hQ4CWQSoW9zoQkTw0utUq+J3ar6sLVAdTNAU27iSgUtC2qSB+8mg6u7ZZrHIykgUalO+gZZ3zxyYkIpfO+61IqBdWpQTVmCE1iQHKtT3+3UwCekD964Sw9tg3/Tm+ExBBvai70NP63lV546kHl+hvkyNaJok8vsUEfE+3NWICePi5qM69Ua+QyyZLXKPKwLEpJCYcpKqMSQPbkNTZ/vrBARIjhfKZy58R9zhJUIxXwYjiwOYnnYNdH8csYZXpfb0bS2krWhXw6a+y1oPxp5CD8FJyLOTUvpfaveq0hipilvl+HGZko4mf3pjjPhodKrptbgZmgdhHBvZaaYa5ao9igZdWUWm1pGkYy0+XDCrsrzVINF5f4EK0j1n5vm5Ul96hHLA+ZCzEKY3G1ZOg9YOrp5JhRergmdG6QzswIKOL8OlWHJgyFxbFuCIq/0iC33jfMNWDK+2HgrmNImhTA8bTfttXU5T+LeKKoIfnDjPGDypNiJAfvwSGPhuUcuQtnkVAOvKGrEUn7tHNkxIEvirYFzYz2a157HDb7iPpuXKUvW8OvuaN6BlIi8lz9SZYLGoDK7uQW8IS1hhT4LpMNVpfKEImpY4kXhPqig9LKg9qfj7JVdSgnaMBk23Azri/N4Jl0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PoCz7npjiYaSsxszUacXpawq98Yl8kRGD7X8ow30Gjd/3Whdba8nrgL45BSm?=
 =?us-ascii?Q?CGUB9/yQGP2S0+s4TwhmzwTMKjqLW/5/ezwdH30d27qNxzGUUrREcZFSvr5l?=
 =?us-ascii?Q?d+EV/PosPQGZE0bqhEJjLPxskkq3yeipHqFgmGpJZRk2jBii6mI6JOsYsAAq?=
 =?us-ascii?Q?8aT7hrqHGzujWlijS1HBTQ1kh43BiaT9fYpgElWpc7IECPuuCXxxLBrL2yr9?=
 =?us-ascii?Q?7qkBj2TvuwaTFnm9DEaHrjRV08YZN4uNgHJz8vZT/w/J4ImDdm+i/hmLSt/S?=
 =?us-ascii?Q?Y5cmpn+e6fNtOaqjGAGiF/1XW17Hghb314jWKCCSg/rGzRNkRLCkdIHcqWb8?=
 =?us-ascii?Q?vmNnBYZoiRrvx57XrCqgj/QhOB6miHLbMRDHoaRHid1aTa85ihC1AIC1PNOZ?=
 =?us-ascii?Q?eYKQxRpfGPT+MEkOO9lgEtBbk634+De7bgs5r5MP0ivY07Hw9xo/ZqxAY9DU?=
 =?us-ascii?Q?OlwfDLFm18kGp5ATwXMDF0wy7IPVpmpya++eRCLdPQLaTH6kHWOub9+PtUyn?=
 =?us-ascii?Q?q67ebWJNqc7dRXFptaDQbS2HjBY9DgUUTxoTT+W1ft/+j9jeiW2Z3+oPu3Iu?=
 =?us-ascii?Q?DDgObr2ZnVM5x9U9iFqFSi9uv5IeWrK3UCw6OavO4J/nBTf8IPYnU/l/fFC4?=
 =?us-ascii?Q?xplEtY244wR8NEB0jPb6WMFQFaLuVLLnC1dX323BhUnEHhxMIYfENZzy6NdA?=
 =?us-ascii?Q?N04R4LQYrD9q0/tGWLbWCPm7ayvzO7P7Luyp149FMI3I3Mu/9aA2bu007oVl?=
 =?us-ascii?Q?X5O6MX2k3s8gA570l5gN/3yisKyGkhX/5CYunRRv+FJpLkoZeDH631vPNrqz?=
 =?us-ascii?Q?TCXyIFWSJn05Xu7Tbi7Ta3mIY3xd6n+94fSZPB1c/8Ax7gOqdBPAqbkrQfpm?=
 =?us-ascii?Q?n4Fo8umjUJkNFSUocz+c8hq0tN+PwdW2dVhGtVDILtFRpr2r57WxQFSEYYFK?=
 =?us-ascii?Q?H+Lali7fopRyX8mKdYExGHr2zaYjj3UaxIeYnIRI9aLNTiliguyaMwq2fzu5?=
 =?us-ascii?Q?e4tyUHTLd+juA+qjreDNc39WJAyp3TZOoUhdEbo4VXgu43Bzss3iFBtbAaox?=
 =?us-ascii?Q?9ccKFZseL8GKfqXioH1uCiM5cUrLdOKuHVQbNNanKj+MmdXU/qMNRrgyo4/U?=
 =?us-ascii?Q?b8yB/WMZYVMsJAeXawFBpLiFRqg+VfgIIGoiuOkUblBBWwgXhnIudbp33sk2?=
 =?us-ascii?Q?EnVlcwdofuj9hpdqRSItKxi7k+CQENNmUA1E3JIwTznGll8LCc2G/vGE8jA2?=
 =?us-ascii?Q?CsCnddP7+Cuff5TQUSghBb2YmBtQ/ClW79kdxXqRNx/1djVqOd8q/ABfBMMY?=
 =?us-ascii?Q?OAyQ9e/V+XlEMuPN9fG7B+5y/bOhiFAhcYRtdhbEZ7YA/kdbJumVrDxVEF52?=
 =?us-ascii?Q?y5k8ZMz7IhHKQTCQ86+MjgY4QJu5uGhC31Bh3nXNqRAe3WcZ6/MHIWcwfdXd?=
 =?us-ascii?Q?U3yDHl7BaYEwFBZKw47wVivFZaRQqLJ8bNv8YR0wN3Gh9Sh1Z5wTC6ovLk36?=
 =?us-ascii?Q?THmey13aCTf1qp9WutR+VJ9+mwuYSLmmAd7yH/lGs2sHM+8nWjJ1rzzZidjL?=
 =?us-ascii?Q?XI3WC+o6v/ve24w1oUYVK/uy+v5KkBOwCIhxqoz6SihGNLWGUs3xuLarEa5I?=
 =?us-ascii?Q?4L1s+8eRwYYElkw2YuxS86BVlLgOGfj1VQ4yNU5Rr65GTlApzV22vyhbArFq?=
 =?us-ascii?Q?9ihd28mw4UXYz+r2CPqvYT7wV1J0ON0z8U9Dwd1X1ZAByexbRH6ciyv60jKO?=
 =?us-ascii?Q?iN/aGTPHHw=3D=3D?=
X-Exchange-RoutingPolicyChecked: cxMdEZ7iXEQ4SWvAqv//xTKPWuuQoTY9RnfZUFoPa+60c23QpAGaYJuXK7AYjmsNq0cr9m246XvJfPKlUv6MmPVvaxHvBrPXYBmOBooYPcbL8X2WeMow9/VuXQSmo2zrHR0HSoq+aN9SEMc6d8zwTvFQ6LUecVwoeUKFVqkxsf/RJfzTR4evVH+PayZmlO6rKtdTUwROFt5p5O8z1CMeRyL+prvt+0defAuIH49PABlFuMliMYmcmntDuiJsLs1TDfa/9sy5P03REalnoOyf4u4Ek2rDEohyoz/t+DIIdiebnHFv47stxEQd8eZi2thDN32l2+gIsXqsdiu3nKAlTA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ca971b-f929-4327-eba5-08dead1150de
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 14:51:41.7873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oQDUAaK9B1ywYT07m9HGVYNnxkfVCAokUevr3+0M4D7fQp8ogrQr5GT/mxiARRO0sM7eZ59yj6osElZfgrh4ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 4D3F64F81D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid,intel.com:email,intel.com:replyto];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:11:31PM +0300, Jani Nikula wrote:
> On Fri, 08 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> > On Fri, May 08, 2026 at 04:09:49PM +0300, Jani Nikula wrote:
> >> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> >> > Flush pending connector commits before accessing the link training state
> >> > from debugfs. Access to connector state - like the link training state -
> >> > that may be updated from an asynchronous commit tail must hold the
> >> > connection mutex and wait for the tail to complete. The commit tail
> >> > cannot hold the connection mutex, so all other accessors must wait for
> >> > it explicitly.
> >> >
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
> >> >  1 file changed, 23 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > index 653b974e925c2..6dfb6b8db235e 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > @@ -1866,8 +1866,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> 
> >> Not part of this patch, but I have a hard time making the connection
> >> from "flush connector commits" to "wait for completion timeout on
> >> hw_done".
> >> 
> >> What this patch does is add that "flush" all over the place, making it
> >> even harder to make the connection.
> >> 
> >> It's not helping that struct drm_crtc_helper_funcs has ->atomic_flush
> >> hook, which i915 does not use.
> >> 
> >> Maybe what I'm saying is I'm stupid and don't understand what flush
> >> means here.
> >
> > The commit message tries to explain that, probably it'd be better to
> > document this as well as the generic way to serialize some state being
> > accessed against an asynchronous atomic commit: the tail of such
> > asynchronous commits cannot take WW locks - which are generally used to
> > protect the state of a DRM object. Here that state is the link training
> > state of an encoder object. Since the async commit's tail cannot itself
> > take locks, the way to ensure the exclusive access to the state is:
> >
> > - In contexts other than the async commit's tail itself 1) take locks used
> >   in all other contexts to guard the state (mode_config.connection_mutex
> >   here). 2) with the lock held wait for the completion of any pending
> >   asynchronous commits (which also waits for the completion for the
> >   asyncrhonous commit's tail).
> > - In the async commit tail, the state can be access without taking locks
> >   or doing any other serialization, since all other accessors of the
> >   state will wait for the commit tail.
> >
> > Flush means waiting for the asynchronous commits to complete based on
> > the above.
> 
> Maybe the function should be named accordingly...?

Ok, can think of a better for intel_dp_flush_connector_commits(), but
since this function is used already, the rename could be done as a
follow-up to this patchset.

> 
> BR,
> Jani.
> 
> 
> >
> >> BR,
> >> Jani.
> >> 
> >> 
> >> > +
> >> >  	if (intel_dp->link.active)
> >> >  		current_rate = intel_dp->link_rate;
> >> > +
> >> >  	force_rate = intel_dp->link.force_rate;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -1939,6 +1942,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	intel_dp_reset_link_params(intel_dp);
> >> >  	intel_dp->link.force_rate = rate;
> >> >  
> >> > @@ -1964,6 +1969,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	if (intel_dp->link.active)
> >> >  		current_lane_count = intel_dp->lane_count;
> >> >  	force_lane_count = intel_dp->link.force_lane_count;
> >> > @@ -2041,6 +2048,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	intel_dp_reset_link_params(intel_dp);
> >> >  	intel_dp->link.force_lane_count = lane_count;
> >> >  
> >> > @@ -2063,6 +2072,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	*val = intel_dp->link.max_rate;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2082,6 +2093,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	*val = intel_dp->link.max_lane_count;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2101,6 +2114,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	*val = intel_dp->link.force_train_failure;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2122,6 +2137,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	intel_dp->link.force_train_failure = val;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2143,6 +2160,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	*val = intel_dp->link.force_retrain;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2161,6 +2180,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	intel_dp->link.force_retrain = val;
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> > @@ -2184,6 +2205,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
> >> >  	if (err)
> >> >  		return err;
> >> >  
> >> > +	intel_dp_flush_connector_commits(connector);
> >> > +
> >> >  	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
> >> >  
> >> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
