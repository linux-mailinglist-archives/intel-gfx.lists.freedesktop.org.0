Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F109B582A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993A010E3D3;
	Wed, 30 Oct 2024 00:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VxychnrR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF4D410E012;
 Wed, 30 Oct 2024 00:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730246567; x=1761782567;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4NzmUAxP/nlliZ1K2ne9mqBmHI+xok6QFhaXniFBitY=;
 b=VxychnrR1euoc4exSlO9cFdrxFOZJdmuGPsJqJ6yqj5gCjTVY/fhMNlK
 8/h/N+gH0J96MzEefoDozQ8Y7wbNdAclTkwY7YFa9svYToI7hB7zTI2u+
 xYtdwLjlpkwRT+lQYWyRHqUqq0ZMsEWpc/bVC6jw8YSWVerxy6yddc3iW
 4wypSLsvigNPIET95dm1smSrqrTmoCDY7654jAhAErDiCG20Pb4cLDBQe
 9uYoWgrxelcEB7i+Y+cldEn2Ytcu0GbrvRPbe8o9a4B4HsCxOLBzZrThi
 Y0o5TTG0BjQC+QBkXjSyw0Fpv7ewGUtMRCin741XnEt0vI1hV6nFlGSxy Q==;
X-CSE-ConnectionGUID: 8GcErccoSOm6GtFUQ6FEng==
X-CSE-MsgGUID: t4hlfOGvRHWjqlBFl3C5zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29770374"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29770374"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:02:47 -0700
X-CSE-ConnectionGUID: raRaAq7iQb2bQEcuQ6WtIw==
X-CSE-MsgGUID: Oz2ayfEtQwmcsQ6Npm2qdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="81755264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:02:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:02:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:02:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gbYjZ9siaT6574BrhRhZP9oCvaEbUFhWauQhdzrj6K8jevD+xC52g8sgJVTQeRBV3XUDg6/vpInwzuoU+c01Seu5caKwDJ2OG3UtXyr1T8wx6TFebFxoaA7/oJJ+Yz8PaySuxp/s7vFoBpIREcFX/PP7AMR+SYmVj5c9zUnflReN6ePCNP0ZOKIUmRXVl2XRC6ytq6MQTUw7SsG5/uQ4oEMhsiTZZ90WY5PUx5DsL6pbzS12+hTDZhFfJ1GGiQEoEVsYuJiAyjTyLx0eomVmBUzdnl9aTrgHXqae6Rmc4g7YtRjqWOkviP9UcTURwcvn7eoX89tw2IXKqWvXg7Sv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JDoM+kJNbSSNpYJuCqXn56WiGbfBhcS10SPntrTU32s=;
 b=yNbCmUZ/i7LXVwwbFTUVYzTcZ1f0RPioCWpDAiWTeD1um69EzMM954xXHX2jTtM8zptx0cegmX4z9PdFCwAwbmLuh7Ki0ccS+4PmZ8SqXJ4Q97CRh6u6Xn3HFAd5Qo27bFJw1aSwFCSV0JJzPODdGXH/UlhD6Df3gH8MsGoJ769+UfHCkuLgxF/OCTq5nyiIiMibNY4uvf6m8IN6JPyFte7Z8CIcT1SOySK34/0Nk6PBoImVNlnbhZQt1LrRX7ELbkSTZorRp/MxrYLwdsoTsupYjZI0h8GCkuHIH4CWjnt6rlDI9FR2TzSBxIakuLC6lTf3WB24Ud9TI5TDn6lDLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7135.namprd11.prod.outlook.com (2603:10b6:930:61::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Wed, 30 Oct
 2024 00:02:41 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:02:41 +0000
Date: Tue, 29 Oct 2024 17:02:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Message-ID: <20241030000238.GB4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
 <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67502B95C2D42E5C43B74B6EE34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SN7PR11MB67502B95C2D42E5C43B74B6EE34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:334::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7135:EE_
X-MS-Office365-Filtering-Correlation-Id: 36064efa-9d3e-44f5-c588-08dcf8762bf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?499TVRHC36M2n+jc/w3pSOs3soBjMKavcSBzrQpQ4e1/hXuMT651voebqnpM?=
 =?us-ascii?Q?ano6XC3fdu4ZcVqtTQ2fe8inlLzKh5pIcF3Ci3Ww4fEbLZc1tyJsgi9tumEc?=
 =?us-ascii?Q?hGi7zI0uugiIaHwCZfauVOQzfPtzG4Wzc0MuW2P2470swzQzg5EOaI592GqK?=
 =?us-ascii?Q?6lro8KbFdOnu736klhOmlvotBY7Cw1FN3he/4gBGuELJfhFhuBez7boCZqMG?=
 =?us-ascii?Q?340DvNSAzh0Ofn+yz14AgrhmlMsR4A4nBCeV34npu9w/+mhlsRo6GNRERhvp?=
 =?us-ascii?Q?50aXP3+P3kWDOrXhkPSjsOdaiAMJF/rlVS1hqxtmYoBtfHBZLmteGtUJe7Q9?=
 =?us-ascii?Q?RR8hLFkyR5IpcQJL4IAs7i+V0ELbrkuaNrnAJaOA+lp+4MKbns7tN9guT+nW?=
 =?us-ascii?Q?1F6enqJRbgAcndk29r6Y5hTQ335NacgXZH0iAmQZ0NVrS63qP7E1YYfDvviG?=
 =?us-ascii?Q?qUmqfpfp3mvtqOfH2m6ib6pAW9/A5daQa8vB5Gr+R/VSFrLpBd8VGvusOcqr?=
 =?us-ascii?Q?9OJF+s5wD5mN5J+U9V4dSW5MErthraS8QyBPka+cw0Fen6vRg7+WPYsijHd5?=
 =?us-ascii?Q?ksRCzuQYmXA+96cPIGKsAkeG4EJVwWOf+qEXL9cFoayTqY655X5bHjHMc9Dn?=
 =?us-ascii?Q?Ww/kav9EiIjdGrWCBJyIvWAklTfiG6z5ICH5/1VbliMAV5Ml7gWzLNrPsxEf?=
 =?us-ascii?Q?x6ggxv3cp263mxejxIEmWQaB9OWRvS6WYaVtScEkN08c+owqtJCUYUxN/Upm?=
 =?us-ascii?Q?pcDtoQ1K7/eYqB3/WJb0QBu5mVKwpeDTwEXJXcEG8KPdHtHQF9JICeU94Ghi?=
 =?us-ascii?Q?DQV+NXUG3xOSODOoXIsz+TfX39ET3sXtaCr+Rv4vCmHpntddFCIsIcjL7M2x?=
 =?us-ascii?Q?OInh8DtG2pU8Ve1t1GIZmIWRbmv8l/nnbfpl7UWbo0VoW0tVnEUN+ZxqTYi5?=
 =?us-ascii?Q?p+doaqYZvMYLbgA2+k4+dBH+LKiCiIURGIXM5cGihIei+IcM+Zz4FT5LGdkI?=
 =?us-ascii?Q?9gN4Ec55+LUSWCxeqlY75TikyGbwXzXE6AxVXlJZ5BMiTaZmw9IuPs+k6QdV?=
 =?us-ascii?Q?XNOE4+9rrpbbMCLwDR7KvtJ542JLVq7NAyL5QZKPljYgxzpu0lv+G6mUOjRJ?=
 =?us-ascii?Q?ffC7yLGtAuuGQNqzYj3lpQ9XKOGbp+3oMhWOSkAiSOWkiJyJj/x94kEbuEYo?=
 =?us-ascii?Q?TDTllbDrcqZiD0UGpBDG8l5fGpbWqvAhdOgV9QLlURMf4EcczEfs1QSOVdU6?=
 =?us-ascii?Q?zm5RKOtpZln5xeZuKxlHrJg6cKaDn7bfsIaMfdv2vtvszRUJIA3jN8CFIv0B?=
 =?us-ascii?Q?17EKDwlrz4sd53uLLMl9szWG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c3eY7P/+G4ErcufUQrH+xZDHsb2lUubidjJKopQ7PUfZWAWm5ep6HDiGLI0n?=
 =?us-ascii?Q?5T+mh8AVsgkJmPH5Kr4FzqWug7xRMI6TpSOcAf5mz4aOwsl4Dzz4tuADSxdA?=
 =?us-ascii?Q?qVhKGM6BdevNwvf+QmKTFVbUgE0u9Q2HWMT0G4HkUoCClIGuHjPpN7CKBZN3?=
 =?us-ascii?Q?o+8m95kq8Ks+uZ7+eXCEqJlmbv9PgITBq++Nt/VsXo3N9bBVNf8x37m+ErHO?=
 =?us-ascii?Q?hdmzWqWn6/KIcakHFgUPboFruf0DwAoV8h4xsoOL1Eun6LFv+Oa4IKPuJLu9?=
 =?us-ascii?Q?rJfp6m04KkOxX8nOr93lsvXe5zfPjo6+uNSAhCz9Tok9IALTe4YrMUjmxsWH?=
 =?us-ascii?Q?c4TnCtoEKlQ0+d6ZTZOooaEEhj798vl3bwuJ82J4dsFD3DCjXSpm2eg02A9H?=
 =?us-ascii?Q?N1xuG94xtJe1CFdsRsnSWqC/SAkrCVa49+eZrGSPG1f9dKnlEQE3da5rxsdd?=
 =?us-ascii?Q?A4wlhaUWlN9rL1btZz04J7O8XvwijKalspOtzil8BdHLaKhlUg+RGC+6rOdx?=
 =?us-ascii?Q?55CyO6teYGNQP45bwjiCN4EDpy4o4ZYa/efiSpGIFdimmnEzMY4Z1Y9aO7Ns?=
 =?us-ascii?Q?fG8DaXhSU68M14SQW8LGm636FSXTvw1OAMU3Vfc+fZPlrf+9V4s4Dot+/nRr?=
 =?us-ascii?Q?TK+Dwu4Nb4+VCboTtitTpevTsK2X+R6syvzWLK6SxXqKxp7A6XcMY3zV38iH?=
 =?us-ascii?Q?Kkb7h9bzBo80freI6S0mhlysabKkV4LRaWNvx/KiTo4xCrxI+dSbSige+5QO?=
 =?us-ascii?Q?TD1cr3IALBubBF383DYtL6SxrpgOJwUvFXV8Na/IIReYnJw21R7Rhl7abKYQ?=
 =?us-ascii?Q?mM2fi3Oe0uz+FR1KOOWV7oft2MX1h8h40pwtl4cXr4exSAPOgY/Ju48RnzTZ?=
 =?us-ascii?Q?ZMexwd1SLbCUtT+yUHVyZyKzyddiAIaDN+SVjZT4obmTJZTsaGxyOmB43N4H?=
 =?us-ascii?Q?vtMXJklKkS32wwRpl4BVTMu23YSkdpqP4te+f1wTJKwWJIvyeTyx1S3pmsUi?=
 =?us-ascii?Q?qMh8XxEv2HS03D7495nOY16tHoJjuXbdOgdGKtxzTn1FQeoL8qDRZXIC2y7v?=
 =?us-ascii?Q?H0w+/Lal+/AVv5zvLlWmD70jTLouffDRJ2lp99ijiNdnlPYRffsDWydxFZto?=
 =?us-ascii?Q?pnPsGD61ribzElFG58Ii2NIpaJeJEjszxgx1L8aJBrsAn0KtaCTZaGGMfkd4?=
 =?us-ascii?Q?z7p7+K/ePttJfxCxiuA+kfD4Q4KmdpT1c9jrAVquqpDW/4fEEKWzgSCeA7D5?=
 =?us-ascii?Q?eniyr35urfWXIPdjEPrxfCFO0K4QdPF+Quvv4nrkcJJjk05SpP//eqL8ea9A?=
 =?us-ascii?Q?35jhTbw9q4rCAA3dMEeloVH5UoSTb8sr5Qt91pkOakoSYf+iIxwg5CuSibhC?=
 =?us-ascii?Q?kKPpoBifE8X8T6znXkCtfYwszExpR1iIf71HKViYKNEzY0m+qUTdSYwVH7/G?=
 =?us-ascii?Q?ccfYJGqFZN7fNFhHqSJZDOTWWBgaqloXPwO4EDMvbCZxwWGSaygN+N8qyIB2?=
 =?us-ascii?Q?OWr2I3xJ3ecRN7OStnzaP+ZoseSTVdy/9ih4WsfB9Haiptz50sxoFMSOwGjJ?=
 =?us-ascii?Q?bH13YGLm75eKBANw1fr3N+6OAmt51R1i9tkNunNLqKB123hYMuvubjaBK9hT?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36064efa-9d3e-44f5-c588-08dcf8762bf3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:02:40.8852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lZCGMoY6UvHk0J6SWqIzFRNU2T4QJaB8GxyqF+pM7ZtJM9G3+M7Ge9f0AFqsTGTLLcpjvRL96gybmOXz9730QsCUwwJg+UeFW2pFyDNJheQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

On Sun, Oct 27, 2024 at 09:11:07PM -0700, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Saturday, October 26, 2024 12:28 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; intel-
> > xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
> > Xe3
> > 
> > On Thu, Oct 24, 2024 at 02:52:14AM +0000, Kandpal, Suraj wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > > Sent: Wednesday, October 23, 2024 11:22 PM
> > > > To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> > > > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line
> > > > Rekeying for
> > > > Xe3
> > > >
> > > > On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> > > > > From: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > >
> > > > > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > > > > HDMI encoder.
> > > >
> > > > This is still missing the "why" for this change.  Is there a bspec
> > > > reference that gives the details?  From the description of the bit
> > > > itself, it sounds like the setting here (for both Xe3 and earlier
> > > > Xe2) should be based on the HDCP version rather than the
> > platform/stepping.
> > > >
> > > > As mentioned previously, this entire function is labeled as "/* WA:
> > > > 16022217614 */"  If we're now using this function for something
> > > > other than that specific workaround, then we need to fix/move that
> > comment.
> > > >
> > > >
> > >
> > > Bspec: 68933
> > 
> > I think you pasted the wrong number here?  This is a generic page that just
> > has links to four transcoder DDI registers and nothing else.  It doesn't have
> > anything to do with HDCP rekeying.
> > 
> > Maybe you meant 69964 (which is one of the four links from the page
> > above) that gives the register definition of TRANS_DDI_FUNC_CTL?  But the
> > info there implies that we're not really handling this properly since it says that
> > we need to enable/disable rekeying based on the HDCP version.  We're
> > disabling for HDCP 2.0 and above here (correct), but I don't see where we're
> > handling the enabling for HDCP 1.4 and earlier?
> > Unless I'm overlooking something, it seems like the driver always updates
> > TRANS_DDI_FUNC_CTL with a rmw cycle rather than building a new value
> > from scratch, so we can't really rely on the bit being 0 by default for the cases
> > where rekeying should be enabled.
> 
> From what I can see TRANS_DDI_FUNC_CTL is written via intel_ddi_enable_transcoder_func()
> Which fills in the values to be written by intel_ddi_transcoder_func_reg_val_get where the line rekey bit
> ends up being 0 by default which make me believe that separate handling for HDCP 1.4 case may not be required.

Can HDCP only be enabled/disabled during a full modeset or can it be
changed on a non-modeset pipe update?  If it only changes on full
modesets, then I agree that the initialization in
intel_ddi_enable_transcoder_func() probably covers it (although I'm not
sure why we've been using RMW cycles everywhere in that case rather than
just setting the proper value during the initial register write).

It sounds like nothing has truly changed logic-wise here in Xe3 compared
to MTL or Xe2; the only real change is that the register bit has
switched to a new location again.


Matt

> 
> Regards,
> Suraj Kandpal 
> 
> > 
> > 
> > Matt
> > 
> > >
> > >
> > > > Matt
> > > >
> > > > >
> > > > > v2: add additional definition instead of function, commit message
> > > > > typo fix and update.
> > > > > v3: restore lost conditional from v2.
> > > > > v4: subject line and subject message updated, fix the if ladder
> > > > > order, fix the bit definition order.
> > > > >
> > > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
> > > > >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> > > > >  2 files changed, 8 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > index ed6aa87403e2..70dfc9d4d6ac 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > > @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> > > > intel_encoder *encoder,
> > > > >  		return;
> > > > >
> > > > >  	if (DISPLAY_VER(display) >= 14) {
> > > > > -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > > > STEP_FOREVER))
> > > > > -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > > > >cpu_transcoder),
> > > > > -				     0, HDCP_LINE_REKEY_DISABLE);
> > > > > +		if (DISPLAY_VER(display) >= 30)
> > > > > +			intel_de_rmw(display,
> > > > > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> > > > >cpu_transcoder),
> > > > > +				     0,
> > > > XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > > >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> > > > STEP_FOREVER) ||
> > > > >  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> > > > STEP_B0, STEP_FOREVER))
> > > > >  			intel_de_rmw(display,
> > > > >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> > cpu_transcoder),
> > > > >  				     0,
> > > > TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > > > +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > > > STEP_FOREVER))
> > > > > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > > > >cpu_transcoder),
> > > > > +				     0, HDCP_LINE_REKEY_DISABLE);
> > > > >  	}
> > > > >  }
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > > > b/drivers/gpu/drm/i915/i915_reg.h index 89e4381f8baa..8d758947f301
> > > > > 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > > @@ -3817,6 +3817,7 @@ enum skl_power_gate {
> > > > >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> > > > >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> > > > >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > > > > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> > > > >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> > > > >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> > > > >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > > > > --
> > > > > 2.45.0
> > > > >
> > > >
> > > > --
> > > > Matt Roper
> > > > Graphics Software Engineer
> > > > Linux GPU Platform Enablement
> > > > Intel Corporation
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
