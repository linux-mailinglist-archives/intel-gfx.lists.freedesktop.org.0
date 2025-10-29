Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2803FC1B222
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07D610E1F6;
	Wed, 29 Oct 2025 14:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kY+rmJNC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EE410E1F6;
 Wed, 29 Oct 2025 14:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761747463; x=1793283463;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=oGZClsRbTeYuODdOLkiQ4jzldiKYlwGPn1WFMLwZ8vE=;
 b=kY+rmJNCkxDFZ3r8lwlS6LlMavmbv8uYkoL6ki4eQ0Nj1QlKILHkTSNs
 WYc9yWhAkWi7gPsBZiuzcgaTwX5h+hpeuprumx0RFNjtgimHVDucGLZ2f
 SxSV5IJSZpihlwlylsvUE3kHfV5+uUb5PNihJciPEULDG4SVExCKE20Ka
 7I8fi+tecwVSJMNZJQqDeeKTUFPu7s6G0YANh34G7iHkFfCsIW5AQn8u8
 P/oxYbSr78wo09z/YH0Ut6RD70iOHuG7lKF7lYQmnHCYcXFJctMO0CV43
 CeSW8YoEzk6PZtdtJGMlsY+2/5W1RWEjFADkMSjBm3stBCZoOa6++RZb1 w==;
X-CSE-ConnectionGUID: dvJHdG3rSyiRKlqfw4KBJg==
X-CSE-MsgGUID: Nr3vkNhgQsWkbJKXm50AgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11596"; a="63075935"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="63075935"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:17:43 -0700
X-CSE-ConnectionGUID: kOFe+JRARKKKdrBfbRmCMw==
X-CSE-MsgGUID: f5031fgYR/24vNXAU1e0Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="222895834"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:17:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 07:17:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 07:17:42 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 07:17:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oaLSsjm/5UWo6r6usKE8fHuzGUMTPyczlZKmBpax9/lm82hi0bFJNZlDpG5+fvaFSDYq+eVI7BNUca8P7CX2sZQ4PQz2yroMGiRAcelI7GZv4CqnZxtaXygnQDt2rYFZRNdqAAgUu9ma03mBzNqlyELYNVCD6izU0tJVlNv8N+3fmHymMHe1Qhrlz+8rnxEFHsGkuIW3QvWFJxiDoS67hceTf9n6RpdRs0N/ex04hLai12NxY13/bCIesx5Iz34jrOhNFUysB6Kc+rTgsW8perLs5xC4Slm6BWr3FZWp4u1//5VU+uloAWjjcWga5GlvgnLkYoMNJdTthx3DjJThag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p9v+Wt5CGHPqjERVNqulMi5GVURrezeNv1/ygASWFVE=;
 b=iWncMX+f6T71OjCN3aHwp6VGW5mowp+VPa/kyJUMZd/Pgu5Zb3wiQYQDpSpW2clJI9eY8lebBAfvlJBacCcNcXNJJz0eueF35DfP7lHo9AfIMWKHVIgjnH0YdPIud2VPW6HgbYHjDd8tbtWYCguqMBKYp4ea4lJd2KNNDGCIVdHG473bNlmp0jUYctwCIwerGWdPFjIsiSnMT13c8eZXVczwL26JTII9zG2xnDjUAbif1EsJitMzKGUv+n3uU2DL2GEI15kp4W21OUUP8rQYdVMmYcpnWFpYj36c7CSKryStlKABxvFS1Jd0131eIGEqfTmASuo3SKgbRSY+RWtzeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB6765.namprd11.prod.outlook.com (2603:10b6:a03:47b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 14:17:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Wed, 29 Oct 2025
 14:17:40 +0000
Date: Wed, 29 Oct 2025 16:17:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Message-ID: <aQIh_g_gOldmCExP@ideak-desk>
References: <20251028113536.602352-1-imre.deak@intel.com>
 <6a63fe2775f399458527be8d55e781644945669f.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6a63fe2775f399458527be8d55e781644945669f.camel@intel.com>
X-ClientProxiedBy: DU2PR04CA0180.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB6765:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ac173a0-6140-4c47-b6a7-08de16f5eb06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?wHRl+zaiutKdblicgazY2SevvdjIjmZRstaYANf0zkj/K49L/0deDIVGvc?=
 =?iso-8859-1?Q?6IdeiWJ2EJMOw3uhDQYU5PasAEg0aOQDFSjd+u6cNwZX88OJzQRhvnNd8l?=
 =?iso-8859-1?Q?CJBL0RKVaYUXSO3Fbyz1dVnAccGEWQdn/QT8+DXb2pYoUzfdBTWjAT5kid?=
 =?iso-8859-1?Q?Uh4wdXYxSicLcqk4bcXKjAMg1eMo8t+Q+1tWmrBZeUKQCzz/2wLwz4jA4f?=
 =?iso-8859-1?Q?ub3QsDs+oKePNHC3mM0Mku9hJ+PAXDyjf9+qEbzrExgExf4jeXGWfZLYke?=
 =?iso-8859-1?Q?RpBhy6uC/1gt9u8sqPSSWVcmA0VbBCA+w4zU0DlBEit8FyL8/z72UosIC0?=
 =?iso-8859-1?Q?rPPoD5I8ZPAmeeqr3xXIRfuEjjC9hzCmQMCYZf0cSk/l25UoUX8HQLIasI?=
 =?iso-8859-1?Q?Wq+daJsKVVPHZ4nfr6R5DXG1U9bRWKn5FEaM3Vkvy6RnmcKinggqxa5yg0?=
 =?iso-8859-1?Q?20hqpSehFUlmlvo6axIJwk1MsMU1zfowOH3mx7tWYfcsxQ+Q69D+qz52B7?=
 =?iso-8859-1?Q?tQnYkltJWAUghmGZ1S+qJUbTkgo1dqMZ1GLq2gk/zaNIklmUI8mNiBlKs+?=
 =?iso-8859-1?Q?kRD2wwHXDyT5KbMiv5F853kFNahjZO0Z8KKTinTzfrGJFzro2+2O32X38U?=
 =?iso-8859-1?Q?XcpnIhXtLaCRjo1seLeGJhk5KR+RLdmYTtpjnrdO0UFD9ciHGJnnoAFcKz?=
 =?iso-8859-1?Q?CIhm89qZf3sEdoJVof8STbCiAFkpJueKOH2onFCkUL+K/oH6LPUjq7y95x?=
 =?iso-8859-1?Q?z7kvV7B3BdNCdXqx2g6+mm4VvMAhSXIrFdnM9Vz6EHJpHkkFTI04W/jodQ?=
 =?iso-8859-1?Q?Nv5qRTAmOEfVOM2f5GVU3SFWSreC1/wRmbej9u96tOzl5jCACxq6lOdS61?=
 =?iso-8859-1?Q?St6Kzj4mvt2VFaAwwcFKbqsEd0fLU6bCGpAXQgSWhFpcZuwPrGFFKTNeat?=
 =?iso-8859-1?Q?DBsLp/AD3+EAfBRtzI/bYca28JaOUsF8B6J1aRrzqaJEmTFESrlYdYTmFM?=
 =?iso-8859-1?Q?Ng7DSCzbNywCITbxHoHZIhMmiJ+CKR0JhUeaPeE2JIjsbTw7I226ZnJU5C?=
 =?iso-8859-1?Q?SO7//x83KFL7w01U1nxLNqXIHSapXQdBq6XGeh2Is7SuTL1NWzVig0GHwC?=
 =?iso-8859-1?Q?twnZDd9Furuqbz1KMWpuHBDwcy+a0kNhfm69PUerWWXOBHc35k/1n1dNkJ?=
 =?iso-8859-1?Q?OpgLpK2IdPRIrfR7GPg0CsyxcRelWut2lK+ztOGuWxkdciQxqxteKW8QOv?=
 =?iso-8859-1?Q?QZGlu3K+2AxGbKCtlc4VDDTRFvVR/Tew5FOvlQ+jp9dO3QwaemnU825EqN?=
 =?iso-8859-1?Q?J1WP/UhPv4LInxmsTQyEOS4ENQcA5OVZTqSkXMEdncK+Ap4cbmXx6m1TMS?=
 =?iso-8859-1?Q?p4E9fNJYM4oE/+8gJKtTNAZW8X7W0nTUYqVDoS0+tgDfPDAUANWB2fk+VG?=
 =?iso-8859-1?Q?IjQ5Jzgbx57ExpEf4PC5sgbxj03Umn6NQd712g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JyGQUV/m/JTka/IeN0d6JBqEJnnjLyXPTzTF0Ql4bcVTReePrQkFNtm4US?=
 =?iso-8859-1?Q?ChBxnovL3swA48yw4ulCdbb8FOfaQE0z17BBOs51JPmE7Fs5rOurqL0q/m?=
 =?iso-8859-1?Q?BgqrXzPwqSu8Xw2GgWoEh22QI7sPWzjr7BFeQch2HR7E7KtekH6zwPl7FT?=
 =?iso-8859-1?Q?zToF6enFV6oDXlU+t8SzO6ZYrJrlIToW6/k0aCpNsRcZUhwEZ1mycHTxOU?=
 =?iso-8859-1?Q?spk2XP8TrA7L41aYMwOClsn72BF5gDwslvWGGZ+puVYsN20JzPenOgmHRD?=
 =?iso-8859-1?Q?Ced73qb7hPWYb9WxcWPDlYxX2Zl3w/jWTdaPeD64HAOmVzg3Zg36Xdro3N?=
 =?iso-8859-1?Q?TsUOAxb/jZFyTQUtRsJiq4eXUVZ2EWd718cwQ054Vte/3rQ7DthYqkLZM+?=
 =?iso-8859-1?Q?iPDRJ9GOfhbQ1kHTy9DtRjRpukjZHXaJ2iX0RfrEIpGcxkLXSVufQJ2AwQ?=
 =?iso-8859-1?Q?0eI/bBE8vapojNVzhO1Vpxcqfe5fKkjqFU1KwLlSru9uqwbi8gmuDxtFqI?=
 =?iso-8859-1?Q?2a+ExpU1+yOfURutpByuF+7f5Ago2YF0WfBHGWhrJE5S11NFU3mZSDAHo8?=
 =?iso-8859-1?Q?Vq538tpL8tTeaQzxzL48mg7r1SYOEUtIW/9ZZwcDavrXogMVW0fBcskSFA?=
 =?iso-8859-1?Q?CGFgaL3akZ7F/oxdQEP2a08ptNzRsIHBq3AKTv3pqpG4nH1lHo1X/dFWBG?=
 =?iso-8859-1?Q?br6IkYZTxwR1dcPio48zaaYRRLcclZj1nnOX0GlBfd9XZluB4XEvSXfIfn?=
 =?iso-8859-1?Q?oN3sXXAdjtaVsvURCpftIbmMBJGzSmxS+bsbaVssRPy9sxc9PZSYmgWLbO?=
 =?iso-8859-1?Q?gfInaYpLPAho3asYDqzuTvXvNdvWDNUp9hX6SpE7B0TigG7ZFaook0gsWT?=
 =?iso-8859-1?Q?bB57AwGLA+VeP7vVuiHiSTof0jkjJHhpVNPXrDdwuP/KRUWAib8JEB1zve?=
 =?iso-8859-1?Q?Gk+yX1hkzRBIMrDEWGTGtys0w7iOz6ePGEr2N9JsSEGQoXKmTP5Wiq7YEC?=
 =?iso-8859-1?Q?W+6LAk4to6YueRe/cauEcfC8X55vfg5Zmi0tS97L4RXzP2ioyKMUhahCcN?=
 =?iso-8859-1?Q?6Y9QO2+eeVCR3armsVMWhGwKrb7y7aMLUbRfpOfwNCEuKpr/qgp7fKSrXl?=
 =?iso-8859-1?Q?GY59kYOWgqR3tuyb0OALHddGgN6HLxVd7IWStitxHQPqlaYES9anCc1jvB?=
 =?iso-8859-1?Q?GudG6cpFVxODS5ubqKmLkWvqVxzlN+99OeFInLk7npvhjFRXkKmQRmowVc?=
 =?iso-8859-1?Q?LNvgM2AadPHZ3HX0KXb0lh8qkEaKcsobXAKygJkRfn+vk2SaLhYVEZBUS3?=
 =?iso-8859-1?Q?+X0k+sXISqTPASKPNM3yNEGwBl63kSAmFTOKvocBEdzVoGL8PRcqeVdOHD?=
 =?iso-8859-1?Q?PY7yl7/GQx0yCA9fBL2XqIK/NslrhWE9+R6Uk/F6O/VsaC+hXe+YZyg1fp?=
 =?iso-8859-1?Q?7aIZ32p0U5YjIo1hU+PTUF0gcr89NzLvvWN3a9txdHj1zUeLT9z3YGEYJo?=
 =?iso-8859-1?Q?6X14WHlmA8uwf2axIcKrWzKYT668BEHyxBze+yBM4XjaRJtRMvFuTm6FFv?=
 =?iso-8859-1?Q?19Cfo1bwKsvgceE9lAAaBC2NfKNwMMEQEKteXDUI0slhOdwdu/1kNwOSjg?=
 =?iso-8859-1?Q?UwHDGFbPZvCg+QfUOKjYi7ZIfdFbpR5GU44e8L2SJpwM2dti/KYesyJQdh?=
 =?iso-8859-1?Q?H8SdsmoZ90sjzIrOmbpBJhwCX4/F8xoqXRuQ7hFl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ac173a0-6140-4c47-b6a7-08de16f5eb06
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 14:17:40.2042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V69x6KZDZZ5aSqRtA6Qc26TRq/JbiDdXEai+8yeOZZRTplTAm1mf6VIQtDV78gwZpKcC+pqxYdgcZKJbH6OeOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6765
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

On Wed, Oct 29, 2025 at 04:06:07PM +0200, Hogander, Jouni wrote:
> On Tue, 2025-10-28 at 13:35 +0200, Imre Deak wrote:
> > The reason for enabling FEC for an uncompressed stream on an MST link
> > is
> > that the DSC compression is enabled for another stream on the same
> > link.
> > For such an uncompressed stream FEC doesn't need to be supported on
> > the
> > whole path until the (DP-SST) sink DPRX. For instance if a branch
> > device
> > - like a monitor with an MST branch device within it - is plugged to
> > a
> > DFP connector of an MST docking station and the monitor's branch
> > device does not support FEC, the docking station's branch device will
> > still enable the link to the monitor correctly, disabling the FEC on
> > that link as expected. Since it's been verified already that FEC is
> > supported for the compressed stream above, the corresponding check
> > for
> > the uncompressed stream can be dropped: the check for the compressed
> > stream implies already that FEC is supported on the link between the
> > source DPTX and immediate downstream branch device. If FEC is not
> > supported on the whole path until the sink DPRX, FEC will be disabled
> > by
> > a downstream branch device on the path as described above for the MST
> > dock + MST monitor configuration example.
> > 
> > This fixes a problem in the above MST dock + MST monitor example,
> > where
> > the dock supports FEC, but the monitor doesn't support it and FEC
> > gets
> > enabled on the link due to DSC getting enabled for another monitor's
> > stream on the same link.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14254
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index a845b2612a3fa..21a60b8c880ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -299,7 +299,14 @@ int intel_dp_mtp_tu_compute_config(struct
> > intel_dp *intel_dp,
> >  	 * intel_dp_needs_8b10b_fec().
> >  	 */
> >  	crtc_state->fec_enable =
> > intel_dp_needs_8b10b_fec(crtc_state, dsc);
> > -	if (crtc_state->fec_enable &&
> > +	/*
> > +	 * If FEC gets enabled only because of another compressed
> > stream, FEC
> > +	 * may not be supported for this uncompressed stream on the
> > whole link
> > +	 * path until the sink DPRX. In this case a downstream
> > branch device
> > +	 * will disable FEC for the uncompressed stream as expected
> > and so the
> > +	 * FEC support doesn't need to be checked for this
> > uncompressed stream.
> > +	 */
> > +	if (crtc_state->fec_enable && dsc &&
> 
> Why crtc_state->fec_enable is set if it's not going to enabled and not
> even supported in the crtc this crtc_state is for?

It is going to be enabled as required by all the CRTCs on the same link,
when any CRTC on this link uses DSC compression. It is also supported by
the link as explained by the commit message (the CRTC using DSC ensured
this support, all the way to the sink DPRX). It's not necessarily
supported all the way until the sink DPRX on _this_ CRTC, hence no need
to check the support for _that_ calling intel_dp_supports_fec().

> Also there seems to be very similar check in mst_stream_compute_config.
> Do we need to change that as well?

Right. intel_crtc_state::fec_enable isn't yet set at that point, since
the state computation starts with a zeroed CRTC state. So, that check
should be removed (as a follow-up).

> BR,
> 
> Jouni Högander
> 
> >  	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
> >  		return -EINVAL;
> >  
> 
