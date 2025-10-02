Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3221BB365B
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 11:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFC710E387;
	Thu,  2 Oct 2025 09:05:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPq0yDNm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DD610E32B;
 Thu,  2 Oct 2025 09:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759395920; x=1790931920;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=igFNbu5sw0cq6xn2Hmj17qGqK2Kdn6A5N6v56Xp4EHo=;
 b=GPq0yDNm9vFTeEJcVc/YJZSknhP96JGXGt7uEkb77g3clilTM4EBP8O0
 Fzg+vKQcjBNBZp6NPd49Yeh/iYTnexAt4u5rMTXV7qkEwVCtW59xbTHHJ
 L1HcN+AN2kYp86Ej/2KDYjXZYJ3/mV0bT1CFHi3AYY9+2Nomsh9luVJ9U
 v7NCPbOPRP83DRJ6tdocq6XnCx5eoi7tDwggHPUuNVCGdvu/IrMBtVa1M
 bdTilA06t87FPE06Mw5e8emFxYwsEAeUnihH7AdoR071qjgCWhW1y8Taq
 vTKhvD0rxLTF/ifBNubqTs5pfzUIKH7VSMwRvXhYmISAME9pgvn6C8LAP Q==;
X-CSE-ConnectionGUID: wdUPSSACRIekKc5yt422/g==
X-CSE-MsgGUID: W336WkUhQCWG4WfqyeuDmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79102228"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="79102228"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 02:05:20 -0700
X-CSE-ConnectionGUID: dGkLKlocTcm71vZtT7KSgg==
X-CSE-MsgGUID: A9OkOTDXTa6KSXXa/+RNoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="179774533"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 02:05:20 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 02:05:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 2 Oct 2025 02:05:16 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 2 Oct 2025 02:05:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oFOQDSvWheRMcbalGXnDfDG7vVAEiG5B344LGaOHObWvTticGyVTHb5fWRglaXX/cip9WkmKZZOYzyO/U4p/SxIF75dXVSjx9GIWso0ONv+VBAQ3o2BKAZR+7v17tWZNCaFwL3le6o3ykS8SFM3gJCunLINj+Im135v4TDzk6pdOnFFGAPqVLrw8Fv2LIBl9mnNcrcuV63ErIqfUEosWWgR3ffDGVWMhPnLa4FlChC4ZSAwLZMnrQPKkc7b9IsBhnsjILjsAZEUgbCpWUvFUr/ns4c1NhWcnCgFHuTecjxZdwQMmlBncqZAZBd+G/VDfxNAXL6uelGDPF4mTOJGsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3IsLpC5H7lIrxjUo4wn+TybAN5pEnTLQfJenTLm4XAY=;
 b=ewFjmv7Spior5yknUmA4iPaDSgRCwDIBVZCG2zZCiCs10RW2DmuSUBi83t9jNSUOf9MkFqeY5yxdpQU08/koSUxJOOdw2Bae76Xle3qcX5sH1RhlYMYIgFNq0PLiiRhnfqFqiQvQ8XmUIXYHhC53XuTP/IRQp3w28NKgYCDiUWNI1I/VEG2R+8r785LSYRaCQ0XrGGVKl98sF2RK/F6Mh56+sUxy3HBTyH9hVR6MKjMlcAeaIAqosex5tu1Gee/3OGKQkIrYReNIQtN5gAWp/o9f38m4m6ffthDC5Ht96Y6ki4vW8pdGvb2FzncdDNpwqYdIS0yxXYOD4FWYS120+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Thu, 2 Oct
 2025 09:05:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.017; Thu, 2 Oct 2025
 09:05:11 +0000
Date: Thu, 2 Oct 2025 12:05:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/display: Enable PICA power before AUX
Message-ID: <aN5AQkfIqubWK_l6@ideak-desk>
References: <20251001-pica-power-before-aux-v2-0-6308df4de5a8@intel.com>
 <20251001-pica-power-before-aux-v2-2-6308df4de5a8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251001-pica-power-before-aux-v2-2-6308df4de5a8@intel.com>
X-ClientProxiedBy: LO4P123CA0053.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8182:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fc58cbf-dd6c-48be-2609-08de0192ca9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KG7qbc00vXe+7diW41yLIM/CYJ2uFb0QXyuODRPrGkyJZn8RjRsA4pEgD0bl?=
 =?us-ascii?Q?jtEWnoRHFHW6jHDw2XRngLLShXH/xJB0SgJgJk8amRje38GxfZ0EqnBLL+T+?=
 =?us-ascii?Q?GmKN/ASTi8KLEtJEf62z37UDic3g/8SDxwnR2vKZd5ttrjN16994lRWhml4I?=
 =?us-ascii?Q?hjka0UPrBPGXuPnChCMjsQntrKkVHbSptTWCtmqlbbAh6FGVGci7ZXol7Qw2?=
 =?us-ascii?Q?/aiZBdrapIT0+MjPnsp59ZaqCeEiZ1MV5YHg3s3BSYUCbf6A7b23W+yErQrS?=
 =?us-ascii?Q?4K5vcebE6DUdDWPN1QwtT4NwflyJBFt7MoJrvksawXEJu9tROv24NYHkN2We?=
 =?us-ascii?Q?eqFddGcHFTI3VwE+gn7a8hctHaZUbLwOcMki/Xx2sDzd/msqWEkl3akrjVjx?=
 =?us-ascii?Q?HogTEGCZBueiUhYn2Ce2J7tU8b1S5AgJol3Kz/a6I8DvKYJ8UsrRvfx84yqq?=
 =?us-ascii?Q?XphaAwp+gSq/BQYQGEVdFtCDZhFvOm2o4E4MWRCCsLhaNKjsV7C7JEscFQdw?=
 =?us-ascii?Q?ojrdAfvpQ7ek/GMqYvgHadzd23iUaJjK46XWJgMzlRC3Ix1w1+k00rH5USx1?=
 =?us-ascii?Q?O2F4kEzTQ3vC2ZSQ3S9BaBHjwQWy6qGG5PwfEEe7BCBzSFD03+FPmT8LOQzh?=
 =?us-ascii?Q?qRy/5ZTx7DzsPUN9wPi12LE2DuZzKCabJfnF57+NwntLEW8x2zraX3W9Mpng?=
 =?us-ascii?Q?bXhaHHuBjvfWk6UHrhQEIMu2cPjYrKkwVbEp0VQ9ERI20k9eUajwC4/3h5Gi?=
 =?us-ascii?Q?OuBYOsMCce5NPWI8H73YHeXIJTOsYngrTdUYolkjXRZN4uldx6TgJqNrD3+G?=
 =?us-ascii?Q?50MGHPLfbbk6M11UzZtvky5Oh7pJwbC0QyGbveb3wbaAEobS9EoKA/SLS46n?=
 =?us-ascii?Q?87rJ5kZ+iD/M24vs5lXgb6i61Gugd0G55+f2tTOZETFLlHlRTUtX+GJLmVyR?=
 =?us-ascii?Q?MXlvGTaBuVSmlg/uByF903/FNw2Ip2SqG/HNgI5w+4+Lah/AVa2TO0vGBslP?=
 =?us-ascii?Q?mc8SyZLtgXdbbVApU/FEi6IjSa1frBfj4jr8cB0kbHN2Wn8BPNCxNIZtfwmj?=
 =?us-ascii?Q?k2/m3hjx6NncjwWIXD18gLYEScPNeE/pguoSsHj4B0OoP610qKuwEp3yDTjX?=
 =?us-ascii?Q?Q+3+cPWzyTwFZSAayYPKmQThFMet+CnBKccQsvLVCFXhjJHi+MiqNuI/3xdS?=
 =?us-ascii?Q?LsNB97mksrI/Nw9J9pQVHCA3hJFbMMPNlW1KDUZNTAgCOqZsR7xrbEqeTwqt?=
 =?us-ascii?Q?bmdKcmFBgATqTLiob72skuoPkzL77y4P0Yuox/1J11jer/amG8BSfDIhfOQL?=
 =?us-ascii?Q?k2WNla/tg19449fT83loe+CE8V037BkVdMqcjg+Z/Q8Iit645bmGBinD7/sE?=
 =?us-ascii?Q?yGvjDMtLMCS/AsEtNUIvJCfeaRW9GSv+I09ncjJtEhN/4KzsMojIEsfRK6E5?=
 =?us-ascii?Q?MzQAPGiGGQlMOB1u4FnluqYYqP4VFewf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JPRS7IvirBaeW1tI2Maxd2OGuiX3+E02eA6CD8nC5PZ+JB8qa017BM3XEzwH?=
 =?us-ascii?Q?Ddogeweq9jnc3NVnX1mE4EsjmnVeWf85LwtW47TxFxDRr3AD9NcVuxARBlc+?=
 =?us-ascii?Q?13Ev4ItcVbJN2b8JwVB4BBIIMYqSZ6uFS4hnwo+5Rlg1zJl0P7sn/t9pCZ6X?=
 =?us-ascii?Q?ttI6Hr/eB5/7oTz56XNb70PXHBgJy48viRFbvVigfj4ZEe3dXfUyvsO5OphK?=
 =?us-ascii?Q?/iVejt76kChC/JD5RI+Xo9F3YrhDs8grCdvp/5srwjJQcmHosxoGO9vx9v2u?=
 =?us-ascii?Q?X6n1Ndb77UDdKbsm2CBKf5TZzpqKGaip71WawK+zGq2FmsJnsS9hbk3XnDs/?=
 =?us-ascii?Q?Oi4em+FzJoGnCnqL0giBlq4XoKypz90qGtM+2VwYn3nmAJclHnYUy6IQ5whd?=
 =?us-ascii?Q?1YAAoiqpQtFU+AvmSKGSuLQY+5iIk92qfl2iZhJqgc5FvnA3sAKl7KmNrCkJ?=
 =?us-ascii?Q?i+uNPOdHghVG00g6vzxc2q06nYqzPZk4v/oAZaY12k7tcFtJq2KudShVnGjp?=
 =?us-ascii?Q?ADvC/vgbY9G/408PRrAJeyX72REYo2DIla9UABjd3Or4c3ROq2EeqkxqsVTq?=
 =?us-ascii?Q?STOFCmBkWAJD3dmq9bQ00YAeUlqQM0fLw+WvgFDJ1ZUp32vNWCb+DD2sIlpi?=
 =?us-ascii?Q?TDP6FcWvVs4exflUYviH9k5iErZW9zA2Kld6xoZD7A4/pkq+/Toa6bgkuUSO?=
 =?us-ascii?Q?JdX0wXzWZLPt18AFFbf3FpV6rJrvxucRyf6SOKEMiybJ5nBQfJkaVjWQUcT9?=
 =?us-ascii?Q?U7rm4c/FxQaXBYqzmGorm8XseGFqor3KMLCe39fY5KSyjqPc5UF3uKNaZnF+?=
 =?us-ascii?Q?n16zCzX29qxwE8dlfV0GCTPTGdq0jq5OE/x8UYHlqADqq0rxPXkXgntFVEDz?=
 =?us-ascii?Q?QPUfWYo3YV0ntvftOPO20GcS25wOBNPkHk4PFYuyzDDFHoK5pYgTthV81EO1?=
 =?us-ascii?Q?azgDmq/5zehE85OmhAiCMGTgfu8eMtXDZrhJPatdoAqX6LXQM4PpOhB8TR7F?=
 =?us-ascii?Q?pjU7O+Ug5vRwfAcnwc/aVt+oS05vjD7uGUkI7fn2qBVEmoZxZRMDqt5MPVeb?=
 =?us-ascii?Q?VBpOwjiWDl73mgAorGOlWiQiQvrb/PXSnFDcEq+0h3lTRvz3fHQ6gysIIMh2?=
 =?us-ascii?Q?1mudW8ypjRY4hCjabcp2bEFOq/v3b1hYEc3giYWieSUsysLZRGIBc5Cpr3ra?=
 =?us-ascii?Q?zz99ZZT97MFV3Q5trdoeiTuvrWVGC/v1eO1hrFIYYlXyPTA5SuInCo/IQS5j?=
 =?us-ascii?Q?JtE2wzB2e6lf2qyOISzlJW63WqrUF9wOowlW7TS24RsJbKCnPJFb5Eb25NzS?=
 =?us-ascii?Q?aTT7tvnjYJxcjDHWzXDE0N7WhVyXhBfnaZ256FbmXlUtDAEVWnHtNw5mrjMr?=
 =?us-ascii?Q?DRvD3MpoYc4lIBWT8yf7YyO+8taiSG5x34Ry1XJRfxQ8bTIbRlhzwLicIxQp?=
 =?us-ascii?Q?pEk3tpiBtojGwMkvSB4uzwbrZzNYWzxJScY+bK5HDjLUdhvQr/Jy093QEiwO?=
 =?us-ascii?Q?PDFjFGH4Q5lAxcv7YBWZ1apyIIMKAnlrRzB7pwGhulKAKRyNhiCZqzTsqyjE?=
 =?us-ascii?Q?dS3w0EnRihMUDYkTGUKQBiNlmigqUdxZrrK6m+nLT8h/i+eHkXrEi6FcinEQ?=
 =?us-ascii?Q?fiiusesn+1VOMLnUZly71kVjZYNKnAAYgq6bJmidcI+y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc58cbf-dd6c-48be-2609-08de0192ca9f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 09:05:11.0707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: McUKeqTRE4nC1zN+seaEDTxxVuagemCTahKcAs1lKCBlXmNH1nrz4cdvxZZH8z2au1buxqDjdJO71c9z21zUTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8182
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

On Wed, Oct 01, 2025 at 01:04:49PM -0300, Gustavo Sousa wrote:
> According to Bspec, before enabling AUX power, we need to have the
> "power well containing Aux logic powered up". Starting with Xe2_LPD,
> such power well is the "PICA" power well, which is managed by the driver
> on demand.
> 
> While we did add the mapping of AUX power domains to the PICA power
> well, we ended up placing its power well descriptor after the
> descriptor for AUX power. As a result, when enabling power wells for one
> of the aux power domains, the driver will enable AUX power before PICA
> power, going against the order specified in Bspec.
> 
> It appears that issue did not become apparent to us mainly because,
> luckily, AUX power is brought up after we assert PICA power, even if
> done in the wrong order; and in enough time for the first AUX
> transaction to succeed.
> 
> Furthermore, I have also realized that, in some cases, like driver
> initialization, PICA power is already up when we need to acquire AUX
> power.
> 
> One case where we can observe the incorrect ordering is when the driver
> is resuming from runtime PM suspend. Here is an excerpt of a dmesg with
> some extra debug logs extracted from a LNL machine to illustrate the
> issue:
> 
>     [  +0.000156] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
>     [  +0.001312] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
>     [  +0.000127] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
>     [  +0.001072] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1
>     [  +0.000102] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
>     [  +0.000090] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
>     [  +0.000092] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0
> 
> The first "DBG: ..." line shows that AUX power for TC1 is off after we
> assert and wait. The remaining lines show that AUX power for TC1 was on
> after we enabled PICA power and waited for AUX power.
> 
> It is important that we stay compliant with the spec, so let's fix this
> by listing the power wells in an order that matches the requirements
> from Bspec. (As a side note, it would be nice if we could define those
> dependencies explicitly.)
> 
> After this change, we have:
> 
>     [  +0.000146] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
>     [  +0.001417] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
>     [  +0.000116] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
>     [  +0.000096] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
>     [  +0.000094] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0
>     [  +0.000095] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
>     [  +0.000915] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1
> 
> Bspec: 68967, 68886, 72519
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Upgrading my R-b from v1, where I didn't consider that the order of
enabling/disabling the PICA PW would change wrt. PW_2/pipe PWs. That
shouldn't be an issue in theory - spec doesn't forbid it -, but Windows
is also using the PW_2 -> pipe PW -> PICA_PW order, so better to keep
that order.

Thanks again for debugging and fixing this issue:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index e89f18b7037f..9b49952994ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1588,8 +1588,8 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> -	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  };
>  
>  /*
> @@ -1710,8 +1710,8 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
> -	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_aux),
>  };
>  
>  static const struct i915_power_well_desc wcl_power_wells_main[] = {
> @@ -1768,8 +1768,8 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(wcl_power_wells_main),
> -	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(wcl_power_wells_aux),
>  };
>  
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
> 
> -- 
> 2.51.0
> 
