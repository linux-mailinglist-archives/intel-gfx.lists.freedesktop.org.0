Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL4WGc7//WkTlwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:22:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC944F8A10
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EB110F503;
	Fri,  8 May 2026 15:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isEiEIzt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876D510E5EF;
 Fri,  8 May 2026 15:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778253770; x=1809789770;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=W43Vr954Vh9f/zaqgpHdLxJjr702jJi/yO5dZHvI/IU=;
 b=isEiEIzt0HWU4x9AX5Zynm2KdAJ/MCyUrepvbrPHxqDyHGuvKE5xL+wy
 k+XMBciyvng+WnKd/hqOwp8aOOXcxccfIGcss//v03GCDgTg4TI488zjN
 IvAfT8aO5sNvLK1xZ2c2DwhfjF/NyA9+wUfbNi0FeY1NNpV8qZFncNLrY
 C78/F0H4TxE9J0OPpXiKoeJQ4Ac0wWXmHN5pr/3seoZvi4AdOQF8egRKf
 4n7uEyurEH+kviw4+GnMLaLck64xffhN6GmINUgzoCmzvA/uv0hBN3ll+
 NkuMx6Mkzrtpoi1zx+iK8m1pIFA0+AR5DinTvROHU6MNAseVeqZ7Mj67U w==;
X-CSE-ConnectionGUID: ZjhBvKyjQPaJV0UmtUOEzw==
X-CSE-MsgGUID: NlGNCtAQS2iafhe3mFYXUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89535311"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89535311"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:22:50 -0700
X-CSE-ConnectionGUID: EWSW4lmiSyaFWoVaavmYUA==
X-CSE-MsgGUID: j8kWTVizT9mAuroE41h1PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235809975"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:22:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:22:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:22:49 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:22:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RJMFSFMjq/M3M+QGONF5p/VaB4+HTxRHyzVq50cZVF1/7JGsBi9j9rCvjgeJYofHQoStcEcDb3KCS4d/bAvnsYL3WAjjVqC5RkcF+aB1DAaliJxXOWtSYMWoNgtWdnTjlUGn+m91y58uHqsqBPCvMuAXkTWKHxaG9E3ieQuemc8uk170qMC0wIyOEJ42EjJPffjN9oVFPt9y4fCs55pHFxUgewr51egcjZTDINv3rrxlngAaBmIKzAo6Ac65c1pW5RdUZJ9otHd4UXJwz4zB9YNvpNtAARzPOEvYJqE4zV4r+OHqB1radK+aqQs0vr0DRouR2SUXxFrGmOAQXDYAFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3HrghtYThxGor8R4Z8CPCMfR0jj7qAvmIaCEK6xfpds=;
 b=aUWpuUUt32XZTipWWF8bQhmPyfnx8ZXExIXrwmjiQbdbo32rwruFcaoMOCc06SzVCAnU9CmFWgh+9UdawbNTwD0503y/6qwFYoM7qKw10S2vxdABWt2nWzdEY0MjcYvj90Ge9nRXHVUn27MMaUP5t9nU3YOLAk0ZLfKhruCrlfih1I5wJJRTwW7tvHSmCZ87NWBLzEWHINqnOMXL7QOl+tgyZPl5mNRlM0SLEsquKF36sgb8BrA0cOJ31WxCydxUTXdc1JaTMhBICDVmTwca3e4dsXau2lXyZHN4TFCzsopORtRs9nom/bv6facOTq8O9NrxrEn9o9JhNwdNCYCihw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 15:22:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 15:22:27 +0000
Date: Fri, 8 May 2026 18:22:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 009/108] drm/i915/dp_link_training: Use link_training as
 base pointer in debugfs
Message-ID: <af3_rlmXP4OJalKD@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-10-imre.deak@intel.com>
 <5585535a68e00ea1639ae4ec386929a0836fef35@intel.com>
 <af35IGTwVpc9scXH@ideak-desk.lan>
 <d591d75be1922e508be457c9475eb6691515af0d@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d591d75be1922e508be457c9475eb6691515af0d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBBC.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6b0) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: 2975f301-ddc3-4b59-4453-08dead159d19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: zA2beb3AAXE2KxfrpzW2AshRBR7dAHjCez5DzTGlTMrc/uOVq7MgbRmTdBCGyOzYliY/JlYe6WdDLWfMzxmUQqADwp7UH3x9CdtdMi6P91ELlkOrirxsKAAgrg4wpcQLTcO6qeohU8GDuBHP6OHNCF6JL5UVYdUaJlTCtD7GZOnS9DbfEs/K/CijGpU7sxfra8SA3HvDPXhGsnNoh3779eYahPQ3V1XtgLg7aa2LEMKH/C0XN7obhSFdfvjDXHkcgULAcsQT5z3JPYvdhD2Hxc9FHZJlWrw+jPIUrVDNhV3LDLtNQt5oU/DtKc22QmZ6vsSsTqBytZjWhooaC9nCo8tVFPXhCtMXB1lN64EXo3RYYUV0m3PI6Phr7xIRCk0QRkB04gyDA5QDrqMLDVJOfC5efWftWViFxnW417nuhYY3nE0guBlLMBJg0UT9w/kKf9uW7hgaE2X2P1rKVuPWZPDtrW6cMI8OU8MNIRI82ea4KDG24aHSu1dXvgERnXOAgirP8vNxBDOJB6GBLt+5ailERfg8GTnzS5BB6686oSeB6rGvwQaZ325nP6gHhhnmOSJouMd+PhmL6HxS2CPGGY55RZB5ocZ5baeAfagMxJtXIoxwfGL6M0IzTuEVpHeuSt8944JsiYQNX2/GKLU3Ltt6nEGfHLxH9hBPCZSXyZJadAVQwBxAh7JYh1Aa8LkJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B7D/mfSbTw41kHY/cNLg5UUmVrWBr+zar7LthKaCB5LmWzLxRqw5ZIFGwIVu?=
 =?us-ascii?Q?LyBzmvXC0B4BIUQH/G5Fecg9qtJFJP1SmoxWSbiMW4+LN6YmJ9yWpGcQJgTX?=
 =?us-ascii?Q?opwXEZAPHGPxM0p6IovOfRwrF6TCsU08zUbU8dR4JLtGNhRA27iYXMOWX6NM?=
 =?us-ascii?Q?gg8Qj8jEiyV03UsPxF9KV4UqAgie37rglc7RM5ETHZuodx27I1T3/RURq0oY?=
 =?us-ascii?Q?QZ7EV3GzL+wkJnFU5m4xgE85YYzNf/uCDXMwP110mCvYvJ0Y7w7gZXmwLDp3?=
 =?us-ascii?Q?d7Rh5few4swklUjF8I8bqmjICrM//hajNl8mhMDe16bP+V4/90j+9fw0oCjs?=
 =?us-ascii?Q?vLhyEqse8TyLc8IvdfUN4VKecLZfgYgy9cBLwZC/hAYBpJKsumMAJfPBVQRo?=
 =?us-ascii?Q?z/9OqXD8lO14qi7BNBsAtik90flvrkuYt6psoEsmHybDwIZnngKBbWdVSdZQ?=
 =?us-ascii?Q?82wK59b+h5WI4tWBqZyVwo1bFhkz5erLnZk1hTVvCcMf01hoZJAEuh+vRFar?=
 =?us-ascii?Q?ImByjvIIYqtjZ3ucWJeC2lJfN+3DCFJVRMBYlzkPPgcE02QcPGWGghwBJxqo?=
 =?us-ascii?Q?5ZeN8xeMjXW39c+fvpfp2vGnLfYRHO8blSHlRBrOfKmoUAoThA8h70qtnEbm?=
 =?us-ascii?Q?9L+6mJB+rDQSqPZUkM2kLzFx5ESJvq/4gn8Y8E8PBttL66KZry0bSwG63Y7n?=
 =?us-ascii?Q?cgPRCsEmH+Q9vDo6FDX07mlhHoB701X4cRAYZmTLlQpm9QKsQIiheQgsaWRP?=
 =?us-ascii?Q?vmj4p4ZyxGnzh6H7e9hXwEsuMBt5eGUMBkXzEEiUFv0DtxR5b38hlGl6JxX7?=
 =?us-ascii?Q?FTcJrNVN46rBSH4pUk6+g24Yd9bfzRai9D4bU6/BU4zBFSMvpm6sVinBABua?=
 =?us-ascii?Q?xiBkxKb1avC/KYyn6NI0RzCeM2b5y7SBgNNFb4mmLvmJOw6i1MnSKA4kKj9T?=
 =?us-ascii?Q?1+qPK4PEdZUJ1mwkQ6GpbMbfQAt6cZC/frQ0IYPFQgeI/HmREzklCZL5uzQR?=
 =?us-ascii?Q?78VLgK/xkVbF6i+SSA14sied+zsBPcRu2v7GAH9GlOtW3UYHqoVgwHJBVFyn?=
 =?us-ascii?Q?69M6WQgcTuWzRxrNK/tJj38mZu94v44q7cpFLjArAozN0fJ6cCJwgHzs9eS0?=
 =?us-ascii?Q?psfHBHyz0EYwhsVn4BT5Sw55egrUrKDtlhy0uZL6gdXcW3LIguXyZRiB8W3F?=
 =?us-ascii?Q?vgbB9ayr5XI9vsaAdzdDPGhuO1e+BvFnK4z1neSXJwqa0HcHBVykzsmJBhGL?=
 =?us-ascii?Q?z6sgpnFp0ESaq65a9yTyQ6Ksv8acpsOQjO35w+5hqQ25wnnG7hOVSBTXTjnA?=
 =?us-ascii?Q?jBuciHp+C+JG1etSTBmt31kzgWGCH3NBGzWhyVFhxSC+s4AfOYSV83myfqHo?=
 =?us-ascii?Q?r23ygCOBDZHSMdR7sZySIX2YNizVKjAAZs2KJuMRsgWDwpZ9GuMrbyOJKhXc?=
 =?us-ascii?Q?8RsxO9/BpbZb78TdXvuPnqP+GlAosAbBFOBQrH8EU05Q/DvF7HdVNRB5CAlp?=
 =?us-ascii?Q?OMKvKT2SI2HNZu7m4UnbDipjQJGqBcbqezzU7/7QKiVD/gmX5vSynGNhl+U/?=
 =?us-ascii?Q?cZv/VXZwU3eTDN7ejt/X6G8iIjDCc7SQotSYi6EuXmIvHnCTlY/Oh8MaTeOv?=
 =?us-ascii?Q?WS6UUTJ7LyDBUcJ4vvNq14dJs5Z7TkwtI3jQ2Ge1wgcpBBy+J17e81me8IG9?=
 =?us-ascii?Q?48c4TghxxJoCgt3ikQkY2SoI4735yHBlRbRzk3mNJ6gsdRITKRfLpYLMmG/0?=
 =?us-ascii?Q?mN9m5ijcfA=3D=3D?=
X-Exchange-RoutingPolicyChecked: M9eWcwogyvIGN+L6y2/W+opBWnmm4p23HKXytsKsi+OcZnDf4lu6Gc3110Cv1gEbK4kBdz3NUiobQrtcRvLJMNSoKGeqcNkNTv0+f5v1oGt0oRc9+wrSwREs0/UkvTEhYG9fPZ9z8/9akBvFFesiASycmRYr8UT++1tXk0aPCsGc9/Gqc2dn3K2Crfwv7ubj/SIbrIRtypCz6MXveSknESsreK2ERRHyUWuruBH/2lpo3z7U77CBVnvn4c2P38YsnomHWN5rVO+6Ulaq5XXG6CR7pE/15Tpy6EQwMCPumEsWGeO2Pv9eNOURX7z9WIQluBRcI2ZFZSh+iZIyb4n1lA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2975f301-ddc3-4b59-4453-08dead159d19
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 15:22:27.7469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEcxUylwC8rsJrWNS7xuSO7SIhHp2F6B0b5TBFImD606oDdbY/0EPnViZ+euPU8rs236ChMyW+fzmttvr2CERg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
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
X-Rspamd-Queue-Id: BEC944F8A10
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
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
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 06:19:51PM +0300, Jani Nikula wrote:
> On Fri, 08 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> > On Fri, May 08, 2026 at 05:13:54PM +0300, Jani Nikula wrote:
> >> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> >> > Retrieve the link_training pointer from the connector and derive the DP
> >> > pointer from it in debugfs entries.
> >> >
> >> > This prepares for a follow-up change where values exposed via debugfs
> >> > entries will be retrieved from the link training state.
> >> >
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  .../drm/i915/display/intel_dp_link_training.c | 25 +++++++++++++++----
> >> >  1 file changed, 20 insertions(+), 5 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > index c2f9af251b6a9..1762e507dd1ec 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >> > @@ -67,6 +67,11 @@ struct intel_dp_link_training {
> >> >  	struct intel_dp *dp;
> >> >  };
> >> >  
> >> > +static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
> >> > +{
> >> > +	return intel_attached_dp(connector)->link.training;
> >> > +}
> >> > +
> >> >  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
> >> >  {
> >> >  	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
> >> > @@ -2307,7 +2312,9 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(data);
> >> >  	struct intel_display *display = to_intel_display(connector);
> >> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> > +	struct intel_dp_link_training *link_training =
> >> > +		connector_to_link_training(connector);
> >> 
> >> Nitpick, this fits on one line. The newline is a worse distraction than
> >> going over 80 chars. Ditto below.
> >
> > There's also a guideline to keep the length of declarations decreasing,
> > which imo does make the declaration block more readable. This is ofc a
> > subjective thing, could be argued in both ways.
> 
> We don't have the reverse christmas tree thing going on (though I do
> prefer struct pointers before integral types). But even if we did, it
> would be silly to achieve that using newlines.

Aye, will join the lines here then and follow that rule in the future.

> 
> BR,
> Jani.
> 
> >
> >> 
> >> > +	struct intel_dp *intel_dp = link_training->dp;
> >> >  	int err;
> >> >  
> >> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> >> > @@ -2327,7 +2334,9 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(data);
> >> >  	struct intel_display *display = to_intel_display(connector);
> >> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> > +	struct intel_dp_link_training *link_training =
> >> > +		connector_to_link_training(connector);
> >> > +	struct intel_dp *intel_dp = link_training->dp;
> >> >  	int err;
> >> >  
> >> >  	if (val > 2)
> >> > @@ -2353,7 +2362,9 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(data);
> >> >  	struct intel_display *display = to_intel_display(connector);
> >> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> > +	struct intel_dp_link_training *link_training =
> >> > +		connector_to_link_training(connector);
> >> > +	struct intel_dp *intel_dp = link_training->dp;
> >> >  	int err;
> >> >  
> >> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> >> > @@ -2373,7 +2384,9 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(data);
> >> >  	struct intel_display *display = to_intel_display(connector);
> >> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> > +	struct intel_dp_link_training *link_training =
> >> > +		connector_to_link_training(connector);
> >> > +	struct intel_dp *intel_dp = link_training->dp;
> >> >  	int err;
> >> >  
> >> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> >> > @@ -2398,7 +2411,9 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
> >> >  {
> >> >  	struct intel_connector *connector = to_intel_connector(m->private);
> >> >  	struct intel_display *display = to_intel_display(connector);
> >> > -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> >> > +	struct intel_dp_link_training *link_training =
> >> > +		connector_to_link_training(connector);
> >> > +	struct intel_dp *intel_dp = link_training->dp;
> >> >  	int err;
> >> >  
> >> >  	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
