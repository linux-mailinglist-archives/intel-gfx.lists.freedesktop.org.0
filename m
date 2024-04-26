Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6498B4188
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 23:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68DC10F35C;
	Fri, 26 Apr 2024 21:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgmM/NxE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C083010F35C;
 Fri, 26 Apr 2024 21:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714168474; x=1745704474;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DadUv2zomIOuARjFND+O6uX0BUGddB9NG2f+OqNjJ9w=;
 b=bgmM/NxEJDQD8cqaolfdFkvPrEl05mlNr01cJ08sUumUH9b37B4oJpty
 0jI4H1XEMQXNu6tawhvFKD/shhLjZqn7GEAuk8VgzuoG8uoxhN1WmSpXt
 5K+pYgW5I1hMIT3YajnkykbMrgLzgHq2IeEHH1U+W2CZJRlha6WNb3W0e
 Nbs0xmZ186yac48fyI0rNd4MKcPZpidaX2DeXHG5NOUPlYo00lgJSY15O
 T6qurEiS0lHROzrZK9IuSXnvr8dCNRK6HV1GHXz7RXuKLZAJn3NY5FAGp
 bhO/2jny9U9psQLaKeK3Y5oB1aO1XoxV6J/zEOwCuIPUHuY3tZkaQBmkx Q==;
X-CSE-ConnectionGUID: /vppyTDrQbmoLBCBdI7fcQ==
X-CSE-MsgGUID: rbsXnkgFQ6W6CXM1DbUSbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="21327361"
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; d="scan'208";a="21327361"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 14:54:34 -0700
X-CSE-ConnectionGUID: LBElmEawR8OAb34cNJepwQ==
X-CSE-MsgGUID: 0qqh/lUZSrKgZnOqh4jPjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; d="scan'208";a="30356387"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Apr 2024 14:54:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 14:54:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 26 Apr 2024 14:54:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 26 Apr 2024 14:54:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2noJVRoduUm2anSR3r6Yy7DRsqD7GgpikTUhCu2Lph/SzYAM0tp89RLdFRlZgcsXTRsX8ZhNbSbNPXL7ubYT7QksgIZysJbSWGkQZnFPmnwlLXBEitZbjZjNAqdnolyVOvhnYy9npnjIJoTHErGVoyYMt8TYSpRUEZS7Ru3eWd/sAYd5k0pdPBNY3SZ3Gy052POLIgPW50Xx3lJCkrivHWhogCrvaBOIVXQTAC8+tdrj4oFeDhHgqwGfXaqpLkTtiGZxdC6BbqGdXbD7HTeqEBiYIIZ3X3sOSozAM/OWXB0maCmNNP56sawnWeTIm8DeygVgjJ4zbl2ldmL+JxF0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fKYnw9j4wWVLhEvKvo/gK25xBBeOaecsyU9/1Ov/pow=;
 b=SW5JyLrilitz3ulfw2oHs0W5ZtwubA13Zl0adIK7SWyg+Lr0ACl9LqicqwuJB3+IgDLervyuJe7C6UKOyHOVtG0q2M6TaNOnsEmpdlgSw280yK/0in7W/LuQHy/Jjumasu3R45wPusCl/wtrYYT5vXYBuPXz956Itv0ewf0nCjtST8G/ug263cDMNH2ezw3G/A2CLoHsZzm2+RKiBkHJ7j7+h4SeAhNHmQ7xxOzdRccVEvxceonsAjjrqf5lWpMwZRjWEygcfLZ1nCEBSVPAsbkdzfMwc+Lg7aWjWYZRVTeAYYhKydYqenCGKGH5o9o1TXGVnJ5U2xxOasZuacim9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.23; Fri, 26 Apr
 2024 21:54:30 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711%6]) with mapi id 15.20.7519.030; Fri, 26 Apr 2024
 21:54:29 +0000
Date: Fri, 26 Apr 2024 16:54:27 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/xe/display: Fix ADL-N detection
Message-ID: <fjyhta7dbrgdfddj5zhbq2ekzspsfxakthxechucbj4jhhhpu3@pwy22mqasdr3>
References: <20240425181610.2704633-1-lucas.demarchi@intel.com>
 <20240425182230.GB7068@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240425182230.GB7068@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR10CA0007.namprd10.prod.outlook.com
 (2603:10b6:a03:255::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB7122:EE_
X-MS-Office365-Filtering-Correlation-Id: b9008591-0395-443d-5b01-08dc663b72b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?V9kwAuXrO4TzHB0qe+CQfMvCWrhA64SrxM+sdgqMIoZzw7QPzjBe2IGQ8LPD?=
 =?us-ascii?Q?D9b7rZUOosZTQHbmpsXL6Wf6V8Gk4WWF2PYluJUotGwym2SQrZwemRzfzzJD?=
 =?us-ascii?Q?EGeBP9i6N4QTUCoBsgcJCmlrhPgquYU+2nPYYOfxXQru5YkZmsEDNg3RRo3D?=
 =?us-ascii?Q?15eAi60KcMMP/yZxkZ9LmfSuVlViUMAj5eA7zbfKdMlwS/hEJPTQpp+YArZX?=
 =?us-ascii?Q?n6/AJhgwZsAzcRImoiy0pdHbvY8/cbCVyaCSi7bQ6ey+HzRJrzRv28Cfd1rT?=
 =?us-ascii?Q?QPPB5nj/C+oAtDbDlnuB5Opn+Mp/NtSqMngIKhzLcDynDKMbJuZrNod1BHY5?=
 =?us-ascii?Q?3TkGFLzbDVTyDCGHurx6KayMJsYV6htiy60IQxidn16/ccL1SZncxsZKey3i?=
 =?us-ascii?Q?ZeELUxr1hA5WvsG50YtuuA1mVm+t3uqVdnEqLvdwcRCXRNHl78gAViFYtbV6?=
 =?us-ascii?Q?mKeU4mgm2Hs7ECQBAE9aDzq/b+MXdnreV5gDYNOWkW7DRsvrWZkOuZbfJkTr?=
 =?us-ascii?Q?Q62GBC6tsGgf4h/mkY29Z5607xWrSo56opigN3NbUQ6Wqb+ZfajS1CdjixsY?=
 =?us-ascii?Q?NvuFG+zWvnWf77ZhxmDg0v1TMphs2Cgk9XlI8lvupxwjvvR9bO3mvlBcVXBW?=
 =?us-ascii?Q?arWmBtFU1bAgqELGrpE1NGi97AXGtrEfXHlagSES7xBdDLevc/THsJwXz5zI?=
 =?us-ascii?Q?AbegTIvMl6JY/fJVSlfsPlTqSFRLI2r6oXgapnHdxnrV8Mz35IKrUDX+g4cx?=
 =?us-ascii?Q?aNAI9taxA6CFvTIO5C1ibljGN+gJd+TxSgo9ne8mMZIMCl+9BgCMgFMnWLcK?=
 =?us-ascii?Q?nXBcdHpFpVGnMiJPZ3QWw98TNJiDOXUySLQelea7Vm9tOUGsd037320Bj/mX?=
 =?us-ascii?Q?UeoOAnyeKySpKXdzaf6SsfqePkYMUF6aj11PuNiAZE3CEMvsyjc2m4JNTe9d?=
 =?us-ascii?Q?elEB+HmGj+5bRzM/bsuLE1iLccFbk70BllSJmdIM4Wzi8whNi+7oV/G2hThZ?=
 =?us-ascii?Q?jNL9YxxUZ1eyIrn9jAiv+Hhk3mjW8TaCnsV/garC/9YzbB6lWe6mjwRyY5jX?=
 =?us-ascii?Q?xX2PfShFnwleKyDc4/GTv7ahCsOPCFVN/u9Txc3spYw7i6Hw4kQP7TlxV3XG?=
 =?us-ascii?Q?le6TkS5wRYkUQO6p2hwu1Z40pLHWP37d9wz1aDKlE/dpQJt4LhVg91fIOv16?=
 =?us-ascii?Q?ZJPYtE5EXfriafQDoywYxKcSTrv6bFTx9+VCYk6ifaOpseZ2j9VWltYCwt9O?=
 =?us-ascii?Q?1rz3fUNtU3kEQG6BSIMkrMjFnEMAGdN9y99ohDmXlQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3iAXQtpEVMMKqJoZnOegZw9At5YdoEcTDuxFaMBVLBOn4yJqF7KwkB52MESE?=
 =?us-ascii?Q?CrZwLPPbfJXyH1mitwtEWVOWRwx9NcNOQABOPP+NOlw4ZX0+/F4MCojKhyZ8?=
 =?us-ascii?Q?vBciWdg7nKm7tFDqdqbNaDFMEPK0JuYETS831gjImaNdVNy6neyBJ/7SLuvu?=
 =?us-ascii?Q?kUBJlDa7ql7VWlnMgSFRclzZvqRg9dSUl6lcKRxpxHyKpPAC9eQrlKn7Vj8c?=
 =?us-ascii?Q?Cf603cpOO992NKsm7tzMynuE1PCeodGwI1+y7UFL1GtsD+NcC2S1SqD9LgbB?=
 =?us-ascii?Q?d6Tzwj7RCLjzitYQhke6JHXLR9VqN7rzJjBKV+rrrSiuLKFx4h9BdLle1kxn?=
 =?us-ascii?Q?G3tPOigTYAsQrhyafLtxw9mq9A2k+bVrcs6UfpsgLiUKa/ApF8NisVJeOC8e?=
 =?us-ascii?Q?MViAI1zzCI7qZA4INwxkIm/7FznzoUGAod3mIwSeWcC4LdqzS7iuCoVcvvee?=
 =?us-ascii?Q?icj8Ab3kQgsKAu/Oo23m7AjyWdiYz1wfQ6WHQgNsWhNmozVD1Hxqi+3raTz6?=
 =?us-ascii?Q?Kg4JZK4Soc/HWN+enouyoaK+tEdyP415Yo6s3yBu/SlgyrJna5sPJN7aXn/t?=
 =?us-ascii?Q?J0HJ2UDWq1VhCbD4gKiILS8sS8wQr+FWMIQpdK96Y+H9mEmwxfMh+LO0Fc3t?=
 =?us-ascii?Q?AqCGorV//FXbxciyI5+ffetDIHad3NBSu1Gw5bCmw1fpoBLKELJYbeSh9kGg?=
 =?us-ascii?Q?k66EuwVb1LtctiBQzESb6iGOhJBke2Nkym+TgvX/hdI31RAIXnKu9t76YH3L?=
 =?us-ascii?Q?R43O2NHyDJRt7WU2IMhH8v8VvGWf8PNFadzj2fOuAd88V3GnEp+avhljQMTD?=
 =?us-ascii?Q?BNLsmIhGscWmtyoCRzJkhDH3U3Va1s9PDb8+gPN9kxJ0mvXEsvph7YCccVhA?=
 =?us-ascii?Q?ar3r7gGJyUJVIU2M414DqpmePRHTDZeIBxzAGAlKY6jj+TBNobMIJHtoEAx9?=
 =?us-ascii?Q?i4kZuSVxFp3TmDFcteCCuzCygkQ3PtBAEcYXvnkm4nmSCUMUyeNw0YXi2Eu2?=
 =?us-ascii?Q?Y0PUZiwR+Q7oevydymW2xYhiRYcfy1xtlRGu6QfrL08/fNa9n/ptokaPnYcY?=
 =?us-ascii?Q?o02AxDmtH8wq6Y2mk2ONs/O2uTf024X2n5LDaJBZe2BgQME158rdf3BNs5zJ?=
 =?us-ascii?Q?1EXeW9iQ//gxCKI/Jd4zXWzJng7SPgaTqZEwy2BFzMXQeeF6XgpccDI7Hr75?=
 =?us-ascii?Q?XyzieILqoHNgvDMy9IAQhHNjDycJCYxTsNs9QWTYHrgOcxYGy5aoRra4uSgt?=
 =?us-ascii?Q?wFopAJaeu1xTQ2QAqK+Ccp229hG7bIE5O+wcL1bCBFLYVST0rTy99Jxnfwuf?=
 =?us-ascii?Q?NVCAsmOdJkC48S0YqGcaVHB052VUnsOCMe28rXcFPdnN9X0OOtcqgktPbdsQ?=
 =?us-ascii?Q?fO36K1Sdc0CrNvh5fWr6n4LRfsTiZWaowRIRRSNfH6h0NMjIGvwp8UD17Eyi?=
 =?us-ascii?Q?7IW6wes3c6ItQ59hcIjewRQu+E3ouMikgVR1y2q6pSURziXzu7ePlXCbJ0Tt?=
 =?us-ascii?Q?kQO3cvwtGbf096UOZ5lgUm06Xcg+i7j0YiTUOnboe6R/OnkORRHRh4NPWaYt?=
 =?us-ascii?Q?+NsxPgRYxzh2S0Q2+Wtu/aJtVGOdvFxceqKg4ec0//MBrS98IX/eK/Zfhxjz?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9008591-0395-443d-5b01-08dc663b72b2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2024 21:54:29.4918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bBWS0bWgdmVnQBoJV8G4CSBRco6rFVkI56SOB8Svia3380aOVNI1JZgiWaqljyh5eXvPAFsgsn8S1yI+JJaoPNVuhf7yuZ6g7cYiLHHUTmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
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

On Thu, Apr 25, 2024 at 11:22:30AM GMT, Matt Roper wrote:
>On Thu, Apr 25, 2024 at 11:16:09AM -0700, Lucas De Marchi wrote:
>> Contrary to i915, in xe ADL-N is kept as a different platform, not a
>> subplatform of ADL-P. Since the display side doesn't need to
>> differentiate between P and N, i.e. IS_ALDERLAKE_P_N() is never called,
>> just fixup the compat header to check for both P and N.
>>
>> Moving ADL-N to be a subplatform would be more complex as the firmware
>> loading in xe only handles platforms, not subplatforms, as going forward
>> the direction is to check on IP version rather than
>> platforms/subplatforms.
>>
>> Fix warning when initializing display:
>>
>> 	xe 0000:00:02.0: [drm:intel_pch_type [xe]] Found Alder Lake PCH
>> 	------------[ cut here ]------------
>> 	xe 0000:00:02.0: drm_WARN_ON(!((dev_priv)->info.platform == XE_ALDERLAKE_S) && !((dev_priv)->info.platform == XE_ALDERLAKE_P))
>>
>> And wrong paths being taken on the display side.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>ADL-N uses exactly the same display IP as ADL-P (unlike on the GT side
>where they differ), so
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

applied, thanks

Lucas De Marchi
