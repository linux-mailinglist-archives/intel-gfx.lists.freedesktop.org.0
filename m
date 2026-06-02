Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6QsCLgvdHmpRWgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:39:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB5962E937
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:39:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=V16aj8qc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39AF210F121;
	Tue,  2 Jun 2026 13:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B8A10F11E;
 Tue,  2 Jun 2026 13:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780407559; x=1811943559;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=GbpUsIytQayUsYVPVIvbpeWdENblSpyaQFZtkX14Sbg=;
 b=V16aj8qc8MPE1jtGOlfGihhBSZQhAA8exJEFjkRxhyeYyLA0vPyM6FoJ
 nikSIZ9q1BYU+vmQd8hD6QRlks0yido6wZmjbUOliG7W15GMtjmH78C28
 kH+fHoiFP9RtQvE85mNtfD9UVkORoZpEk0E1tj6CTdx2slTVqyttwyBIs
 bklQ8Zc8iwBd8pGHc//OyGfZn/XnlvUpeAGpuJtzazie4I9+aRjMqrwnR
 F0zUCicyXL53PJyDizXPpoDzZIFBvsduk8YCeHx6Trw+QwwX2FMwAaJiJ
 vHBRdle2w6RgLld8+HSCIlO5a2q6oO5suyQeajTBMNBMVlbV6h16k7YxP g==;
X-CSE-ConnectionGUID: omxAIyG3SMe71CLICdqWYg==
X-CSE-MsgGUID: sDdr0FCZTmKpBgrMyGNkAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91767008"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="91767008"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:39:19 -0700
X-CSE-ConnectionGUID: wTQRpxl2RMS3gt5rFZFKWg==
X-CSE-MsgGUID: JeSbIqmDTzKIpemITV0ESQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="267777784"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:39:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:39:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 06:39:17 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.31) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b3fPlkfHpDqD5h3kyi5wgIMEMoLKjvfcAL4nR3NXpqDqm6V3Vp9QfSyWUEWlg1fELKaeqpk2FzvOJNse8FrRGrd0tgyZ4GAkuQpUZUHKBrYUA/B+ztNKG7UbCO9GAYJOXj5Ir4fVQ11NTcUygJUK/Mv+5o3J59nLxIQASiROtMsHXXExQcnmia1kfVZx9RDmJDoxAX9WdOhFgf+kpRtN+yX1S1ALWM4QpAQlWs+IJEfyO5TYpudUNosgGSSiFLq6tgO0Qank8j1wnz1xxXF7DPiwJ1x01RJhqHZBNPjJkCxyJrW8nY44Ct68eZyWhRhVo5ONdqZtX5bQnuFzZ0jwHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zoZVta34ouqwZlS9xeoQN2EzvFNkLWCxQvd+8jR9MKM=;
 b=m+Y8hjFd68DBnzKWK4BjhhUfPlshwZpUDwAXm3YoNqNb7tJFIQsCSDI4Ntg63zKUqTvGUTGUXeuUXLR9hrIbk1I7PCdcdfUxLFDQjnJo1cu7NTI3UM397CjrISJwWwKXjyUXVcvY4STMR7iUp8G5uOIj92F9kp+DYQ7df5DkxIsnDrbLMGJdmyXfj/XDOvWByjIubxY1ySsk1S6pawNsQK4Vk6LHZX4jdmsphUksSzajf72C0JdO4xoK1If5Vwd+Yea0XPYmKvoVuskFIc2sx0/TPdNTx8PGjtNohW9ShuUZ22UZSerR5PHPT8+5iagl5P6y3NIt77u0tp3fLqUpDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 13:39:14 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 13:39:14 +0000
Date: Tue, 2 Jun 2026 16:38:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Stephen
 Fuhry" <fuhrysteve@gmail.com>
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
Message-ID: <ah7c59mNa4WfTJKu@ideak-desk.lan>
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
 <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0073.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:274::14) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA2PR11MB5211:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dcb1546-d859-472e-61c5-08dec0ac5613
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|11063799006|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: uqRQH5fcb0j7cjXPYotA1omyc5ekDeZlokc5ngg2VXKZGhRtK4FTEK0cK5M+mTBOtIRK01JvyzGcOvgCMJUCba2Z+/S27VoGtjFrkVsA4+eaDtaKcQFpcyM3N+/ivEB90k5mfrDtNRZ3lO5X2+sOtp/YQ4dR67xMGeXLT58dS9/3hQAz3Z3vO+AiUjtvgf86xA8A+5YXfPUYkKpa59DBHgjd/TbTnOXcbMO5cdE3XKU1mKzaz9Cj53bpxXSMsXRDrjTMc2DbxV7lcImZDwurhTe+LY2nIH6I6mZNgBwGfNNMqgPoF4+pfp6CFTneiY+ZzkHd0QcyVb04HmaQKanJ8veXBrlkOLdKHytdNCs95etJzgJusvfM92l3+zFdh4OHzvxNlI/Z4lC7wqASkpcuBaRqrUHkxlq2FXmWrgrW7bF6KH60yqq2Kwqv5h6qjjOXNozl7TcexZD5wCwWyYwxW1iAWi6kmwukzfoxegXxYjPw3ORwBPFFwt4p9RCHaZXKnwHPGAL4Kryq/wS+wxuIVG7E+ZXM8RxJ5WR7g8jpMA/xneRh3HYdAL3nOkMkhjLZ9SEjbK+YUT8OUwBVdcfn4fElpszOdEsfm17eF/5rlO4aV7Y2Wm9ISPa8vxzbvITjuXvDedHQyAaMAa8yo8xIoQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mn4KfZ1u/ku3wlnP86mTFhB3gQWUChpi+b4dQB3QmjLOQPaGgBk8uHH80udR?=
 =?us-ascii?Q?V1PmRHQFTyTBcUM/gY42XDQF2yIFDXQtjNmJSEOskJ8NQO1RcWJIb7jNmSld?=
 =?us-ascii?Q?J19ZbMC2oijqfyKTT/HWNiAHvXrWqHJ7f54RuVIO2I/Fs2LgwRGfe2vGGOy1?=
 =?us-ascii?Q?S6YPpbDHVRIAjc7zjaDIo6JoEwhQpPDgz4qZxH5fNmoi9f3CjNm6jDxIqKRB?=
 =?us-ascii?Q?JpwrRLF52pt1woVJ29gwuxrv50uit1t72nZyPB1P/pnPKKvjAR0AZSgBGfyp?=
 =?us-ascii?Q?6TIoAnfN+nxqGm7aIjsh12KuYU16TrE8nZ/v9emseQpI8sAkghjpI8bIkTop?=
 =?us-ascii?Q?fX0Uz7RgFGwaRPFFcQVpf5J8UcN43VO1pwRy3p7ZxblvAzLokgu6DexkmJjR?=
 =?us-ascii?Q?PvlnCZ9woAN0m/WcF28yMWOn/+H6H7iXBPyTWr1jO0WK0Sslpvv0UIdol2gI?=
 =?us-ascii?Q?xuCVXOhcAPgtXzTk0/j6vdvkMH6rb+Gwn7Spv197kFOnv4nDFWYFVQWohTRV?=
 =?us-ascii?Q?/4k4z5zmAC2FDPbVyoFeIFXUwfqBvyh1cxXudsalqfPDkpSb/vPwFR1+TC8e?=
 =?us-ascii?Q?ph2vWnGYjkmq0RIV4w7wWaKtq7W4i0UaNNsQBVCNyXcGyUWnuB9ojYebS9lL?=
 =?us-ascii?Q?7ah0eyPdTeIYlcaUX+A1/J3Q3QOwr6mkpjfM7SVoAFbULCrgwvrhFmWRiXYm?=
 =?us-ascii?Q?Rv/3QdKEqkHUi6xuKqJXk52sGOikn2sFnyI7j/g0OWymUsamaUp46hKXZ/5E?=
 =?us-ascii?Q?k+mQrLx23SbQ7qu/GmZSSB9Wn2jZFJ012BiC3V1s4CEQIUHKcCDDDp/n1x/Z?=
 =?us-ascii?Q?RYjdiL28X0O17mc2tavc8b7gQWStiwlWkCSn+RfRpGs3yGEnOwIb2RxODxNb?=
 =?us-ascii?Q?1+pZqNvDaF+CxPs4jS7P8pLmgYRvYRRY46cmproGJHYT7sy717P3heVT+PNn?=
 =?us-ascii?Q?yJWlXWgXu2S68shU0jyp21BcaeaqSDF3g3lzmKD5pUChy77FPIR7fRpF5AEH?=
 =?us-ascii?Q?T/rmd8Q/FX1fcHDqgbTFKSxe4ES6rfYDb3wwQyMttjgRpwtbJ/mjKXZrSgX2?=
 =?us-ascii?Q?I8r7jhs2uTHy3wkfu9c3kzafSTu4zI8sWqk9tMHxjjPz8XPyhpFMtQKxe1ee?=
 =?us-ascii?Q?jqjBZ+97tQhLJIqkrWhy580Vx+4GDYM02DzKi6UHnnFp++GHiqil2DIS0Cwa?=
 =?us-ascii?Q?jBpoM3l+LP9d/2lSqInp7vw2bTRlZvOliT2RAsqeEA4C0hdk/sRljDPBvqvh?=
 =?us-ascii?Q?o+1nBMc5Z/Fb3iXfU/gYES93P5MBquW3wKpqTazQnq0pdrok2gpNZHlCZ3mM?=
 =?us-ascii?Q?nvvMPBX1fZdml0pn/wnlND+2buqXE9iUtBalPDcgorkgq/oPg57mXvPIUrs0?=
 =?us-ascii?Q?YrXxvqtGhitYEj4lGaz8lZ2PnfAEze41JNTKzUFp39gPHAIJzebil6y0AuF9?=
 =?us-ascii?Q?cpw0H5VnhmZRJzY1RuljbZfA5VmZxMXp3VMXFEnGMNwHNDOzEK5mLrAqspxz?=
 =?us-ascii?Q?HTocGWN3MaHnUMiJVpLnArSHZujELmvunC+wbx14P7jwWOpoim/uML8ZkOL1?=
 =?us-ascii?Q?BJcNwc1Lxm0bjV0T1yOnYDfpoPwxZFB3hqt2u77EdEEvMXkgp7sSH0Xrac0q?=
 =?us-ascii?Q?V6CuUtulZFnZm8sVVO4YxDZFyZBHz9v7sU8r6zE1fXGgMqz9E53Rvp5veVq+?=
 =?us-ascii?Q?pM0FOMSnRK5T2NUaU5RavqxcII/S1FMlrJF+2Yux3ID5Zf+ZwAKMF5KeaGUb?=
 =?us-ascii?Q?ZrZ2oQGSZg=3D=3D?=
X-Exchange-RoutingPolicyChecked: G48QXx9hawSXyyGYlPSg+vTxtAo9PqLlIVSb59IEOLtG0PyEbDfw6P+hcbl9D/octwshUKe72BIJWxNwOWJoV8FTLHnQGLTDf0suzuhBGn8TB8BIvP/OywZY/X1yXchfevaYBDuvMw9+63NlwrK8c4jIqZUjdOE1kzY3oWe/TNG4uU188W+DEviybGFD2TzKLYU3vZdntJIB3BZLGEIyW78lsSJFwmmeBQWhiGzfVmnXe4hWgy1zMBG18gEGpXgfu4LX6uK55L7HG9SJMEEkpkUMKO4vPOUCiBZWPvUncL6ekvmHd7fKAfEMS4vraCIE5QahryWOHGzIGp5rsQ9eHw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dcb1546-d859-472e-61c5-08dec0ac5613
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 13:39:14.7050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RftRUM0pt6cp+P7y0RfkuPCLfboPy9ZOPue9K8VHPfEK2/bOwjeYCqO+r9auaMCOxvZqdgU0KC91Wdk5a515lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:from_mime,intel.com:replyto,ideak-desk.lan:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[intel.com:-];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1EB5962E937

On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Tuesday, June 2, 2026 4:17 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Stephen
> > Fuhry <fuhrysteve@gmail.com>
> > Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
> > 
> > On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > > The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> > > pre_enable and post_disable. This fec is shared across the mst streams
> > > and can be enabled per stream basis as well.
> > > So have a refcount to track the usage of FEC and then enable/disable
> > > accordingly.
> > >
> > > Closes:
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> > >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> > >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> > >  4 files changed, 85 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 86520848892e..e12a3d6d6a67 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct intel_encoder
> > *encoder)
> > >  		encoder->disable_clock(encoder);
> > >  }
> > >
> > > +/**
> > > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from
> > > +active CRTCs
> > > + * @display: display device
> > > + *
> > > + * intel_digital_port::fec_active_streams is the per-port refcount
> > > +that gates
> > > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial
> > > +HW state
> > > + * readout (driver load, resume, GPU reset takeover), the persistent
> > > + * crtc_state->fec_enable values reflect what HW currently has; we
> > > +need to
> > > + * align the refcount with that so the first paired disable doesn't
> > > +underflow
> > > + * and the next enable doesn't incorrectly skip programming the HW bit.
> > > + *
> > > + * Must be called once after intel_modeset_readout_hw_state(), before
> > > +any new
> > > + * modeset commit can run.
> > > + */
> > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display) {
> > > +	struct intel_crtc *crtc;
> > > +
> > > +	for_each_intel_crtc(display->drm, crtc) {
> > > +		const struct intel_crtc_state *crtc_state =
> > > +			to_intel_crtc_state(crtc->base.state);
> > > +		struct intel_encoder *encoder;
> > > +
> > > +		if (!crtc_state->hw.active || !crtc_state->fec_enable)
> > > +			continue;
> > > +
> > > +		for_each_intel_encoder(display->drm, encoder) {
> > > +			struct intel_digital_port *dig_port;
> > > +
> > > +			if (encoder->base.crtc != &crtc->base)
> > > +				continue;
> > > +			if (!intel_encoder_is_dig_port(encoder))
> > > +				continue;
> > > +
> > > +			dig_port = enc_to_dig_port(encoder);
> > > +			dig_port->fec_active_streams++;
> > > +			break;
> > > +		}
> > > +	}
> > > +}
> > > +
> > >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > *encoder)  {
> > >  	struct intel_display *display = to_intel_display(encoder); @@
> > > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct intel_encoder
> > *encoder,
> > >  				 const struct intel_crtc_state *crtc_state)  {
> > >  	struct intel_display *display = to_intel_display(encoder);
> > > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > >  	int i;
> > >  	int ret;
> > >
> > >  	if (!crtc_state->fec_enable)
> > >  		return;
> > >
> > > +	/*
> > > +	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > > +	 * crtc_state->fec_enable is per-stream. For DP MST, several streams
> > > +	 * on this port share the bit. Only program HW on the first stream
> > > +	 * needing FEC; subsequent streams just bump the refcount.
> > > +	 */
> > > +	if (dig_port->fec_active_streams++ > 0)
> > > +		return;
> > 
> > This doesn't make sense to me. FEC is enabled for the MST link and if it's
> > enabled then fec_enabled is set in the crtc_state for all the streams in the MST
> > topology. intel_ddi_enable_fec() will be called only for the first MST stream
> > being enabled and intel_ddi_disable_fec() will be called only for the last MST
> > stream being disabled. So I don't see why the above refcounting would be
> > needed.
>
> The  logs mentioned in the above listed gitlab issue shows mismatch in
> fec enable/disable in the MST scenario. Hence added this refcount
> logic to overcome the mismatch.

The root cause for the mismatch should be better understood then. I
still think that it's something else than the lack of refcounting.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > > +
> > >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > >  		     0, DP_TP_CTL_FEC_ENABLE);
> > >
> > > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct
> > intel_encoder *encoder,
> > >  				  const struct intel_crtc_state *crtc_state)  {
> > >  	struct intel_display *display = to_intel_display(encoder);
> > > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > >
> > >  	if (!crtc_state->fec_enable)
> > >  		return;
> > >
> > > +	/*
> > > +	 * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a per-port
> > > +	 * register, but crtc_state->fec_enable is per-stream. For DP MST,
> > > +	 * multiple streams on the same port share this bit. Refcount the
> > > +	 * active FEC users on the port and only clear the HW bit when the
> > > +	 * last user goes away, otherwise tearing down one MST stream would
> > > +	 * disable FEC for sibling streams still using it.
> > > +	 */
> > > +	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <= 0))
> > > +		return;
> > > +
> > > +	if (--dig_port->fec_active_streams > 0)
> > > +		return;
> > > +
> > >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > >  		     DP_TP_CTL_FEC_ENABLE, 0);
> > >  	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > index 580ecb09b8b6..3678c28a0dc9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder
> > *intel_encoder,
> > >  			       enum transcoder cpu_transcoder,
> > >  			       bool enable, u32 hdcp_mask);  void
> > > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
> > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
> > >  int intel_ddi_level(struct intel_encoder *encoder,
> > >  		    const struct intel_crtc_state *crtc_state,
> > >  		    int lane);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index f44be5c689ae..84bd0d993197 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> > >  	struct ref_tracker *ddi_io_wakeref;
> > >  	struct ref_tracker *aux_wakeref;
> > >
> > > +	/*
> > > +	 * Number of active streams on this port currently using FEC.
> > > +	 *
> > > +	 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > > +	 * crtc_state->fec_enable is per-stream. For DP MST several streams
> > > +	 * share the same port and therefore the same FEC enable bit. Track
> > > +	 * how many active streams want FEC so that the HW bit is only
> > > +	 * programmed on the first enable and only cleared on the last
> > > +	 * disable. Modified under the modeset locks.
> > > +	 */
> > > +	int fec_active_streams;
> > > +
> > >  	struct intel_tc_port *tc;
> > >
> > >  	struct {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > index e88082c8caac..14f038b8ef81 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > > intel_display *display,
> > >
> > >  	intel_modeset_readout_hw_state(display);
> > >
> > > +	/*
> > > +	 * Seed per-port FEC refcounts from the just-populated active
> > > +	 * crtc_states before anything can issue an enable/disable.
> > > +	 */
> > > +	intel_ddi_seed_fec_refcounts(display);
> > > +
> > >  	/* HW state is read out, now we need to sanitize this mess. */
> > >  	get_encoder_power_domains(display);
> > >
> > > --
> > > 2.25.1
> > >
