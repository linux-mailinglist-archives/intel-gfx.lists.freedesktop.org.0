Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNbjGRHpc2nhzQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 22:33:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7987AEEE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 22:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FED710EBE2;
	Fri, 23 Jan 2026 21:33:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fu8GABgl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FC310EBEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 21:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769203982; x=1800739982;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AKj/yugJ/myidzFqNA6ab3xZDgkinLzz3DylTdqsmdY=;
 b=Fu8GABgliQmzjLMv31HllhoSdRKmu5VyxSxZqxqs8MaNQn3m0xR3iScJ
 AuNI8BsP5pLDbm9lziehDUbwQzKrCh3+CStulK7isAJoyL06hkmsV1jlC
 NMgH2GTDAkCc5ljasJDUEHObsRTbwDSHUXVdE/GSezB83xPXo1N3t04JT
 RozZqlIDHVqnDHo1UE5tD9HIm9k6k0YtyYiCqt+hjVPTb8OVLVeyYEqi/
 gTkGkXW1E7vzSahtwFn/eB2aH4Qrz70JH/ZBypOFh9/gsrrDY1/xw8Gi3
 zOL73Honb8dFqdf2SQF41opJnLDyLyF0vVuD/Q1sGxb8RFcl9at51mnXi A==;
X-CSE-ConnectionGUID: wvSk3jkTT0aJpFtnPDxMlQ==
X-CSE-MsgGUID: j8zJp+bcQxuspShHQ3BO2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70182630"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70182630"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 13:33:02 -0800
X-CSE-ConnectionGUID: LtqziVxuRS2PXjDlzYCkYw==
X-CSE-MsgGUID: ZLaiR/eySc2DYWgzhAEwlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211985072"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 13:33:02 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 13:33:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 13:33:01 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.39)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 13:32:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VlK2hZ0WYNMzr6VkZrDZp3E7iRzFyrXsG/NXATD0RI0ANUfOchGZx7tRc4zB7CxUQ3WOI5bpMu2UbxJSblHZ4WypPNwa2c0de9mctXufh8WCdbcwOBMqN0lwoB8ddX1JzxxoP5AN8opaaahPTrC5q4+emAuwg3kfHvjnbvs0eZDjBbojkS3lCv78ECi429SHxbJaKXiVaH25znGgIqKTFsqBOkolbKCl6hndxFQFihPNVD0pRuiVCQtgA/XcqdfKSo9/P6N/PWXoY9PKi7H2wBKAK/Sx0AiikEtu7ZDE5H7rSd3AEU1Xe9CwckqYx5qO0S4HuEtmNuOuprG5cdVbdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DW9StWiOGUbcTswFxtLXPXghu4VsnA/B8Tbu/s0fvAg=;
 b=tQNzCFbe9gdxOoN4O0AFz6Gf3i9S0UynMQWyqdSAOwCM8FzYY4l+65GtJBiGKrkkX1ud+VkhMLNeaqxmfzLCg+G8tDDv3N05o0yinDXV4CeGrwDgY8Oagd8htzBZtqDmPVqpVl6zrGap/Qn3SIl32NYR0gjlVBpiKq3mTEkqQ+rGGDduDEUzwdNsPJZgK8x//BeQW/WfNscQHOtNGhxgo4qKuZsG95DYNIXdymTuvUb6QGnzCfvxDik6gffAO6x3Eoxf/bsjz9cjcmB4/5RFdPbRfN2SDQVg4NdlviiAZ2KspnKurMZI5GxBn3AJVmz1yL9L7pKUHFbfOKrM/ObeyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Fri, 23 Jan
 2026 21:32:37 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::443e:8ff8:c5ac:1ac4]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::443e:8ff8:c5ac:1ac4%3]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 21:32:37 +0000
Date: Fri, 23 Jan 2026 13:32:35 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>
Subject: Re: [PATCH] drm/i915/display: vcpi is always greater than zero
Message-ID: <20260123213235.GG458813@mdroper-desk1.amr.corp.intel.com>
References: <20260123170914.64548-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260123170914.64548-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BY1P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::16) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|CYYPR11MB8408:EE_
X-MS-Office365-Filtering-Correlation-Id: c90116c3-29b8-46e0-81bf-08de5ac6edd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VH6ykoXirru00+IBTle98B/2vdTighA2MZ1kL60NKLTLe5JHMFN7rwWYxNH6?=
 =?us-ascii?Q?dvvSyKKJExw7GUi0Dmso4p2+qgZYyIMlAm73lCvtY1D43wGzS5Shh1rgh+pw?=
 =?us-ascii?Q?Cw7wIHshLQOWlGDW/VvoF7rGPZM5YeCMTLAP1Carx5+5i1WwGEWD70npwOr6?=
 =?us-ascii?Q?gja6zixaigpNGhpSb3pwJssHCFnH2YK/XlnEyyEpqDX+532OnRP56oFUYxJF?=
 =?us-ascii?Q?a+GtHzpNVi/yHU+XLSawR5BJTfiDw1J/IXOIhfvn/M7ty3F1KebIeRfUcfPD?=
 =?us-ascii?Q?fGNuYxe1JGqxH85LQbP6iF10GkHRZtqNMc/Us7k8QtCtn2Tt+rBgoyxQ0smI?=
 =?us-ascii?Q?c3jwVlxQdIdgSauZQwNQJfd+x95i3YLgoYxAJHpEi4uX3HQMm7DpEpIOVmn4?=
 =?us-ascii?Q?caM0FoJguRz3zs2cZlQrkc7uEykzTpgYm6nud0SrwDNTkVNKB6kHe5SvLvJU?=
 =?us-ascii?Q?3rUmElRdddajLvwKjGrU46g+dOsI5DxEHK6WFnAGYNCfWTigKG3mlk1BSVXD?=
 =?us-ascii?Q?xtMZuZHBQBhOT4puclaXCwA7tX/aMxcFMQGGewwIfV4psISAwfDmjWOErRHo?=
 =?us-ascii?Q?mhaCF/gwjuPNT1zp/iOntJ1Qsbw2r6zZXv2mCYzNZCyYm2w5k/w+6DlaikVr?=
 =?us-ascii?Q?V9XGU6jLE233f1PGBd4XvRClZhcfcOcScFgVRq9uuclwfBaAxs8GWvCvuCpL?=
 =?us-ascii?Q?YlpKk8x5T0kT0hznqx6hrtfeDrHsAfzAqNqV1Vu3udjpIu+/W0XllrLBcpj3?=
 =?us-ascii?Q?dOiIVWDK0snzBoNkdrTj+wSKq/yWnhOdEBpdsporxfkV+ntF8YNpOmYvpf3m?=
 =?us-ascii?Q?7r7P3tEQN5TiboOdz3AoZ4PtaaIclnSm0ypJMVNE9pPxjmqOUgNgf/d13CqL?=
 =?us-ascii?Q?LgVEvLpm7nsHLxopgouJVu3oZBQAuqGmtuzQbt40k6j33riN2gwl5y4pyGaB?=
 =?us-ascii?Q?6RKvjRRE+9HWC28SbLgyRkh/7Je2BShsBE6gz+sbCP7kkVNConoDACIt7V/n?=
 =?us-ascii?Q?kyOtoRKwlBWMuwiV0+mAH8kqnURCYb03Q4Of1NgGRHBAC7nFahTs18RhHb++?=
 =?us-ascii?Q?NSPX/GissCnvAv6JcpSjba0y169GaP9PhHzFqxF1+DUPgG2UAgWcli5wJJZQ?=
 =?us-ascii?Q?CQkWV3gnNBvAvgRH/NdNYPNC4b8+crqyDN//C9sM3J2v2VMkV3KUr2KVETTa?=
 =?us-ascii?Q?SiCjvFmhtik9AvVKWdDCnDjTWehBM2lidF/YBcBgCTQHvjb9tROlfhAQHcJ+?=
 =?us-ascii?Q?0nC/5xAxZnRpQckn7Ow5twRh1QAJmXWySkmFYE4HuaMIk/DR1fyF1MWg/xOC?=
 =?us-ascii?Q?Cat5M0Jot41i1w+gDKc/98fh09ndxi7CvKQQJwAp3VddTdt29V0oXq5BxRb3?=
 =?us-ascii?Q?zUnl+0Msdj1HR/wGHLSInIxfvqrd5oEiGTisLprRrHFPc3KIMFHYwbNrxJ7l?=
 =?us-ascii?Q?Qf/cC7neaWbj9Np5vZCcOPk0xIvnKOWvHmjV9PVY2Coqv2j9iylLCcqctTNv?=
 =?us-ascii?Q?7INXtKZVrbsFHYhbbghro8nytc+awHKZGdIgsgdd3jbcaXFNiDAfC18VapuV?=
 =?us-ascii?Q?t1uAl7BbYB3K+UY7YdQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ENTvgJgBCbG/Q0Z4j1hUK5wmgK5G0CqRlKCN2g3XnA4fXv+W548kOu59UcET?=
 =?us-ascii?Q?zaOVQ9x/dTgIHEEb4uoMMx8EZkhlM05qQlgspu/ZwN6+wgWseUSHgOFLKwMw?=
 =?us-ascii?Q?cnVy4Wa0nnlUrpZ67lqI6WTOl94iJ429oEncF06G90oYHh1iV4ifLGvPq9IG?=
 =?us-ascii?Q?QQFKwWrigVWD/7qVB6bwUsjxQds1TS3cnfRwY2yTFqhbY3Akqe6Nhib9yAUm?=
 =?us-ascii?Q?SX+oL4t3OaUeKRD3lt9JFbc8PsgSvwmmB3JW5B9Z6qCutn+qc2ffsz2PIAgh?=
 =?us-ascii?Q?626LVlfm2kiTH/16Zb2UcXRp0JgZingll8XoLsEFc4mYLubLJYq78nw9UmqZ?=
 =?us-ascii?Q?Jj9jsvE+ZPCGlaMt7nB3Pubn+NvS3g7cKjdbJ5W98GPze+DOpVT4ykRrMrRZ?=
 =?us-ascii?Q?ycVIA62ddlMFkvXbA1Ng1O6OxYTuGRuVDgfzMSpj21I+7/mY126uOgyHADAD?=
 =?us-ascii?Q?vbWPElpSdNDzO9pZFZRrqdy+EOL9oCPzcT2sngtjgl0vfiahUiiNHxVk1xpD?=
 =?us-ascii?Q?xxHuUoYEJdjjziYB/+wRqTgsUxHLfZbf0uqRLsDG8NIo9pec5g4cjjSySZ7P?=
 =?us-ascii?Q?bCf/gOxNdFsHvbEzQdt2DOv4O69c8Mij7GJ0scAC2mD4mJHDK6PRQFkzHL3r?=
 =?us-ascii?Q?qnU16//lXPaZ8Ble6kx+sOLeTyfrkVpNPbOtzoZ021FVObK+tUquLCw4nRbm?=
 =?us-ascii?Q?R0Arw12yd0qHQiPki6oq6uIuonU4BNodbn1zw2bRW0grhcOzKDT0roj8cbqB?=
 =?us-ascii?Q?5Gw6e4Cao5Zrqs6ThjP8Tytx1jTKOeWpdYdxdoFIon7hKfmU/Up17luewsK6?=
 =?us-ascii?Q?RCeOpkSe87QTNescXQfxCw3s7q50GoJPZBMy+SwVgVuqfhDx+UpbUmAP3xWI?=
 =?us-ascii?Q?nDf4HWsH9dpvFj8KkNDoLsCW4wLwgv/bLhI3JpsbCrUZ0DaxUUuCwR5h2Tgj?=
 =?us-ascii?Q?rcBq3YoafZcwfA35TMLAK/fwlLB7SbbKa9ZG5/0baXQpxsvsOwTLuqtzLgbJ?=
 =?us-ascii?Q?t6PbwoTmv6KWZpbYU2nmK08JH63Mrz/Gs1DATRDh8PymMvbrDui3DW1dKIOF?=
 =?us-ascii?Q?hgGRK7hx8sXcV45WURFOQ39vs4IvlGAwOQu5KF53WHzwtheVCdwQF2S2TG1k?=
 =?us-ascii?Q?g4IYjwSkv57MNbzMm2HtREDedj1oa4Z0iKfPWt4EPlss9t5xo90kprJl5dAk?=
 =?us-ascii?Q?a1MEpynB8w42O40DtrWuWVt4ozI/F6GCkLv5ge+9836kfWmBHofuRQHzyhtn?=
 =?us-ascii?Q?TJ99Y+c5Yhh9um3SN1liHugOEy7QuIVx5l0UkKrl0VRqiA20u71rBzd8EHQ9?=
 =?us-ascii?Q?ITVL8/54A1aKU3DyEZwTXcD0GZsCPy9XiAeHh593XlnJmvvIyBfhYmdJQBlH?=
 =?us-ascii?Q?8hDADUbs4T48qdmEjWO5EceNlQeTb8zZbnUErVlxqHzONXTXTGAqRM3SB5gD?=
 =?us-ascii?Q?9rB1+JH1eF2ALlkuWMGTQFIorVjA2IpDRvS/dHqEFilKng6oMG+MpM/O5ODp?=
 =?us-ascii?Q?/ZN7A59IiQMVIpSJAWz1LaqIzekaSYpE+XzTWLk1QiGgI9e6qyeFfuKLHfh0?=
 =?us-ascii?Q?oUfvVAKRNnIbtRmrPY90g3XN2KhLL8pNsX+cyEYXRPL08T20EkRm8vqwP4zG?=
 =?us-ascii?Q?9OtsDScg86JNOtcPtTDiLS4IKE/hRvB4A2jhUj8KMVtcNh3V/sY8PIaZ3Kbi?=
 =?us-ascii?Q?b9oub7lueSUK+pqIEcpooIbIKssN5Vd20gq0rcsR8CzxiWEnR9cgjVr4v574?=
 =?us-ascii?Q?jSj1jFPmg7g4chfq4X0+l6WCrLzxbqU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c90116c3-29b8-46e0-81bf-08de5ac6edd1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 21:32:37.4840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pzr0E3mV3s/oJCkaIJ+AAOxOejI0XUn1EZGDpaqZATOPZ6irRE3c5Hm1SuHhrYV+IKiwRpIe9A5OOI5IakE2HEo2OePeyrXLiIVkV0VxbaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.267];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CB7987AEEE
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:09:15PM +0000, Jonathan Cavitt wrote:
> Static analysis issue:
> 
> intel_conn_to_vcpi currently checks and asserts vcpi >= 0, as grabbed
> from payload->vcpi.  But payload->vcpi is a u8, so this is always true.
> Remove this unnecessary check.
> 
> While we're here, the jump statements in this function are largely
> defunct now, so remove those as well.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7114fc405c29..3673a70d7ef8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -76,7 +76,6 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  	struct drm_dp_mst_topology_mgr *mgr;
>  	struct drm_dp_mst_atomic_payload *payload;
>  	struct drm_dp_mst_topology_state *mst_state;
> -	int vcpi = 0;
>  
>  	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
>  	if (!connector->mst.port)
> @@ -87,15 +86,9 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>  	payload = drm_atomic_get_mst_payload_state(mst_state, connector->mst.port);
>  	if (drm_WARN_ON(mgr->dev, !payload))
> -		goto out;
> +		return 0;
>  
> -	vcpi = payload->vcpi;
> -	if (drm_WARN_ON(mgr->dev, vcpi < 0)) {
> -		vcpi = 0;
> -		goto out;
> -	}
> -out:
> -	return vcpi;
> +	return payload->vcpi;
>  }
>  
>  /*
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
