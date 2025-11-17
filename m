Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00388C65A10
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 18:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3877F10E0E4;
	Mon, 17 Nov 2025 17:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lLMry1QO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DFD10E0E4;
 Mon, 17 Nov 2025 17:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763402292; x=1794938292;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=W+AbXLVHJQy0cpFa19Gt6XhQjkbE8hzE4dRLJ4tKMIM=;
 b=lLMry1QOoa48cvo8CJO1TsZEZDpRvZFkw4PQeim5EVBh5zChFAW0TX4x
 n57WY7/974/UUAiAGzST688BYy83gDpEP/gGq0AftTiM2zUwLUPPlX1be
 0OeMgYr+V5aWvhOSFkOugrXkUMUXmd7qcBEM2nijxDnWAFZ0zOTfxtZWs
 QZ33zPTH9PHJbL/bczkHohmEikFUMy+FNlrJRPO8/X3fmgU8h7CD1H14O
 AL1zKIxBhv1EiBdT3HOtkWR0JUxSLfPzNmhFdFw5PH2Zlfh9aAtbNIqb+
 IHeDr3Vdk9a0LZBzIzTGiEqYRazaVvsVBdSyLcNzJ+iI/FPj2xpirYaz0 g==;
X-CSE-ConnectionGUID: 8lPJ9dEjQEy/8sd2FDW96Q==
X-CSE-MsgGUID: z0lTPmv3RrOpuWwYRmtghg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="90886867"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="90886867"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:58:12 -0800
X-CSE-ConnectionGUID: AzrM8T+yRbm62eBzZ86kSw==
X-CSE-MsgGUID: UmOhnKrvSFax87LIQ5Uz9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="221175253"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:58:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 09:58:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 09:58:11 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 09:58:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e48xKOOJnBVdwKnxUfB8sA2/VuWZ5izwRyYInYPmer+15j3EvtnBTiV9GaM2lhfsfRnOY+F9nc0RmKplZoauwunjaq9sqRqoawAL93STs6Ht4omfSqqc+jX9xRT/NlUbymOrnMNv1PGjfjaypkBeY8HY8MYQw8iTlBG/sat9J1Da1eT7iY3Vob2BW1t4lg6B9V8XZnYPREw9busp3/+IKg1XXBhazzZr3LLgJgS3bvaHwUrBK6ACwbICHwBSSXJaqtsql2gSSLg4xx/Kd5LNBvXY01IrEKuumnbzw3TNUjLk/DGApTcHXo1IQnLqx4chQkWd+fjbhMdzQg46se4H3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pbSgdfyaIY9UFmc2zQhMBJ2UwqL0drCbXCSpXiicbI8=;
 b=I3AyOYcHKO3DjiaT0/Y3Dw1WzzGYzatPaCmi00AtjutIMDCRQ1o/M/NuCoUtknpCznBUbpJXYgW1+IWiMp0aTu4x2qBiykpxcWJHNMCRsQjXi0MHuG61QEZUleGIB6r7C8H3BqBcx41RzZmxbvsHQc1eMcFFZAV1uY70bo9JUWblt/T1s06eqJvONdAD/PFCbfU+oURvhzKVy/LdxpM9mCFXKSn72cmxvm2MyqXCbGb5nJDgj/ksgzjcKtjES/IYpARjb2Rtg2oXSORLRFRCik7oKufbpZzlR0Hyp8zp1rj/3Ogzwi5jGTiXIdqOr823kUtq/YpZS9N/QzOe7mSsKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 17:58:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 17:58:07 +0000
Date: Mon, 17 Nov 2025 19:58:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRtiKDZAsYyNYoqw@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk> <aRfV2MuICSW1jR4I@ideak-desk>
 <176339175784.5989.15280881790145867529@intel.com>
 <aRs8nFHQ-syeq4SB@ideak-desk>
 <176340023109.5989.13935406990721055950@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176340023109.5989.13935406990721055950@intel.com>
X-ClientProxiedBy: LO2P265CA0224.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB6002:EE_
X-MS-Office365-Filtering-Correlation-Id: a7411726-a032-4c9c-d5b3-08de2602dd22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EHhJSEvVfToFFvUBtbBp7Oc3dVwZ2J0MSdVxHcxJj2CV74/0sYKxeKI3d51o?=
 =?us-ascii?Q?7gfMvV90lB3ukADiUGFM5c4A3jQdrKIdWH9pAJrVIKmxSVtXCf5kyfYJ/yg8?=
 =?us-ascii?Q?6g8KDkVdTRdDTxbSWDINaGbL5O1JDadujGyCpw2neg4A+3os1exEpPr4Huk1?=
 =?us-ascii?Q?EORlpYwKjjDYbZgCKT0Rv1PnKv9rWtOb4WqdrAVGaSacp6K2L7ygWduND181?=
 =?us-ascii?Q?ynXcQb1zzeUAfNAwjzKiZ8Yb/XxaTSgTrEKmoH5ERTkQQCo8PNxhxVd0XhWs?=
 =?us-ascii?Q?Me92365iODx367IrO4kAXgxZEGX4oitZm5BYUeSByXMXSjN3ftHEtXWpR6Rd?=
 =?us-ascii?Q?TCf11qZPqZEunB6scuUMAEaud7PfCau5W+83I2vLXDXXrt/iY8irmiezyV99?=
 =?us-ascii?Q?JrDf6XwCUIdXafKkLTuUFpM6dNaqu6nDi3pweM+jFkO3ALv7PbJoWpUegLDS?=
 =?us-ascii?Q?N23S56goQ7LieQG12FCpdr1ghq2hU9utNaCAth5dfO1BPvKWtvMJquT+PIth?=
 =?us-ascii?Q?LUZhNRsKZezW3UVmKnVYSCpTFWuASAF5lB3ISjDbRFKRpnIhDB9PqCa+V23s?=
 =?us-ascii?Q?rvzAIyMXwMsjmROIItdQDWoat/7d612PlxZZ9pArm929IxDEQg4O0gzQx++5?=
 =?us-ascii?Q?XVubM5LtmjgKxJ+C3eRev1pwNerLAyuh2vrWnV2D99cQc5JLRXdA/KXufyJO?=
 =?us-ascii?Q?CoKcvTqUZa4KoANqTwqNcAArro0eTi/0ZKhw5RG5wLK3ubGU69itCxg2ywKV?=
 =?us-ascii?Q?u1F9V4D6NEIn0XfVFBtVoczMHNSQcQKo9tYTKFP43REZBG3ipf9gZK/cKFRv?=
 =?us-ascii?Q?m7jq3t+Kmz/8yaKD/UUCJZtAOH6O1yMqjrxHDB7UsRSjtndw1LXB/5y7dreN?=
 =?us-ascii?Q?zlC6/CPvVLViWYtCpjJSqJI8c+NYOWmRGxyKe+4olGdAedOp8+yv/vlJqIJ6?=
 =?us-ascii?Q?sdeAO6rQD6OOReZl942Y6YktK4Jza0jjxBfIO5F+IZy+7nmpEacHlmkBwVeO?=
 =?us-ascii?Q?pH/LX5j9YpysLkprjj0EMfNNkR+zp8XclsEaLVrwaeC9AGRlEMochDLXJpEV?=
 =?us-ascii?Q?eFJqxlYFp4lIG+zdH7tpfGmhCuVqx1lLi6aZ+4Q0rSKzKcHaVcjatK0IW2Vc?=
 =?us-ascii?Q?wiLhKk1z2EBf4Wc95kieR4XVIOmRSEmKnjuhIgbUp/CsXGxGhY97aMKq5TEm?=
 =?us-ascii?Q?nQOoyO9xTXcJ3SxAM/hMcc7tw0+Y5DRBD9UwXMlgaZ+b16M8yL5B37rWVW2M?=
 =?us-ascii?Q?zHVfOG5GCxvGrQ0Di0TgXvfaN4vyg/2MoqW9LNZVgIdphJHPgpSzglRTdCoP?=
 =?us-ascii?Q?dfhIJVfhHQOlOB3wfUUCu+gTUb7jetgwsJZ2c7+VsbD9K9MNFgu6txHggapb?=
 =?us-ascii?Q?fsCb521F0e6UovoVEBdHkyAohtsOLpnD3AvfLzp/eudI/2kuP1rML3sOd0K6?=
 =?us-ascii?Q?gRAJ7ojhsj4w15Ql7teWMtEHSuC4dwAi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BDmmNsJmXbSdcFWW+9xsO4eQrq7vq47JaEmAef8YHuMyGaoSRVk9Xfp9rQq2?=
 =?us-ascii?Q?twISsn7RahwjEOjT5yMpCmkTm/3b7Djx+uNHj+FN347Ay7Eh1oX5T2D6a6ZE?=
 =?us-ascii?Q?YF9lDbdvUtMVk7eQ8FRft0/RKp7n2xNLJ8i+xCyyqrpq16G0J8RH5MeurjeP?=
 =?us-ascii?Q?QvO1W2lZSmGrn95RqQit0/Seyxp7PrOxRWAi7iLs4enu2wU4QYwUo+puYVjQ?=
 =?us-ascii?Q?FIk4l9bcK7Dc0ptlTmWMj//cjPI7KH57W6vLxF+GPY1H3rCdzApwnic9tp0/?=
 =?us-ascii?Q?1HyeAk6rex7i5cySYwHo0OFJxtp6MhhU0mlvv4jaEcYvFM44XbO2l9Gbi8j3?=
 =?us-ascii?Q?RyKdsrucqGAc4tarCvg3LWEkcDNHZTQ+wwTO/v1er6d/TlxjyNrpxA6g2HE5?=
 =?us-ascii?Q?UO/nbtBqq3V9MTooslHQMJhxjtK50UUb0uCzWw56TTbwPGC8vAW1HErDlEfL?=
 =?us-ascii?Q?KdZXfKXVWd3Wvy5tkXqgxNzCVK3eIGumNeDMIZlO274SgrNh9NpL+6GLpUNt?=
 =?us-ascii?Q?ZfppU6l/rm7pHdgyGGRpFbrbkTStuVCK47TJJAvkGeseCv2hmtv7lxfMogGh?=
 =?us-ascii?Q?pvU1RjM09zMK9pldxUX8RSRXUv+9lLaUi3lq4+/9K4xQ1yyBSKI23qPvtEob?=
 =?us-ascii?Q?6E36+zXobBIQwl7zV9qhRytxrsvrGjC3dVG88id/Ye8eG7HjkOfdTdozoR8F?=
 =?us-ascii?Q?G8f/qMiatqBT1ac8d//9vsQjI/pNrb6/30Xlnu7qio10mT0NyLMRZ52nj0cO?=
 =?us-ascii?Q?dnvrxYxG1Wa07y9sK+PC9eetLlnk2wwqN0k5QYfAp9eZRuKFCmXeqRGTB8Ex?=
 =?us-ascii?Q?YdKOMod9cHGTpyzAZFMs04hBwtVmccgCnvh45H8BERGBXwP8ZIeXeA/7ILEz?=
 =?us-ascii?Q?U2UiOqAf0UwuEpjcol6kHSpfxJdladpRvcqo0iHeA2Zo8stQLtjKsr4IZl2j?=
 =?us-ascii?Q?snhhajonoE1ahxcKw16UFnieeyRgJTWO+z8jsDnBcddA3lyvIXTr/LjQNGMo?=
 =?us-ascii?Q?uwGExHTuirYcPg+SVobTi+TmpOBFkhwUYNGXeWX5sVYwyM3NA+0aSCVFzUCm?=
 =?us-ascii?Q?xYOdpUex/hdi5q2ZkzxEzhUNIuoYQw5L3cVw+bqsY/GeS+vnby19S8MULdl6?=
 =?us-ascii?Q?iES+13+wjFJUbRUO0bTdES0Du84bxsQsWSLJXJz2mAWAOw/9/kyLzGCCwHJt?=
 =?us-ascii?Q?VzkOBxxSnem4422jCZ8KU+Uu3yIwrbpHy29+9lG6+YYLww8pLVhflSzwbg3f?=
 =?us-ascii?Q?OyUr64CoW8YGrV3kLU4ZRKf/bnXlm6qwWnkaDAyD3t+KNDAuSNJHCN8krUqX?=
 =?us-ascii?Q?k28pFZghkXnPVrT/J/I2w6+67svOKzTtNX0ClgfwUQmI4cuwC6TlHvMjxA99?=
 =?us-ascii?Q?qJGZn1TzDxVkVT347TSkKU+/2UDK35HtlsnKYqKGbFYA66PxbGDQbvZ/l1QM?=
 =?us-ascii?Q?i0S+/qxIZKCNjgvIxMr2VhQsAMFFE4NkU+mcVouPjjU/4DgDQoovQZRr/9xi?=
 =?us-ascii?Q?72Q2UdRpwL+PY4Mkty689Q/P0a8N5HhDfv8kEtY51UBxpCIUxAz1hgIURkHG?=
 =?us-ascii?Q?qkDtJGIkv97m9XLc+NKEc61zncSnA0hw75EvnoE4NHqbmrJyggAqLqmsYVnK?=
 =?us-ascii?Q?HcIuPmo7dMlVf/lmz2deO3+hj/hRhmkrcGYtYw1F+/sj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7411726-a032-4c9c-d5b3-08de2602dd22
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 17:58:07.6724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bx5eDYkiZwJb2ikCqIgZZGhseZpdk/8p3Ba7jV9BgC9gTbnYWbgTkxE3KK3/zdF9JkAp+OR4hOnAiR/kgnOO7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
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

On Mon, Nov 17, 2025 at 02:23:51PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-11-17 12:17:48-03:00)
> >On Mon, Nov 17, 2025 at 12:02:37PM -0300, Gustavo Sousa wrote:
> >> [...]
> >> >> > >> +        if (iom_dp_resource_lock(tc))
> >> >> > >> +                return false;
> >> >> > >> +
> >> >> > >> +        val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> >> >> > >> +
> >> >> > >> +        consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> >> >> > >> +        consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> >> > >> +
> >> >> > >> +        /*
> >> >> > >> +         * Bspec instructs to select first available DDI, but our driver is not
> >> >> > >> +         * ready for such dynamic allocation yet. For now, we force a "static"
> >> >> > >> +         * allocation: map the physical port (where HPD happens) to the
> >> >> > >> +         * encoder's DDI (logical TC port, represented by tc_port).
> >> >> > >> +         */
> >> >> > >> +        expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> >> >> > >> +        expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> >> 
> >> >> One more thing occured to me: why can't this allocate any free DDI? IOW
> >> >> does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
> >> >> on which DDI gets allocated (or is there any other dependency on which
> >> >> DDI got allocated)? AFAICS there is no such dependency and the above
> >> >> address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
> >> >> DDI. In that case any free DDI could be allocated here.
> >> >
> >> >Ok, checking this again, DDI_BUF_CTL etc. DDI register addresses will
> >> >depend on the allocated DDI. So nvm the above, the mapping needs to
> >> >stay 1:1 for now until all the DDI reg accesses are converted to index
> >> >the registers with the allocated DDI index.
> >> 
> >> As far as I understand this, especially after talking with Windows
> >> folks, the allocated DDI will define the port index for the whole
> >> programming, including the registers used to program the PHY - and the
> >> hardware would take care of routing to the correct PHY.
> >
> >Correct, that's how I also understood it after "checking this again".
> >
> >> Thus, it appears we would need to do the allocation at hotplug time,
> >> like saying "this PHY will be driven by DDI x".
> >
> >To clarify, if the mapping is 1:1, as in this patch, the allocation can
> >be done statically during driver loading as discussed earlier. This is
> >the only way it will work atm, because the DDI allocation cannot fail
> >during runtime.
> 
> Two scenarios that come to mind about doing this on probe time:
> 
>   1) The driver could be loaded with nothing yet attached to the legacy
>      connector.  However, I believe the TCSS doesn't require the
>      connector to be attached for the allocation to work.  So, we are
>      probably fine here.
> 
>   2) If the legacy connector is never used during the driver's lifetime,
>      we are basically holding a resource that could have been used by a
>      DP-alt/TBT connection.

Yes, this is also the way how things work at the moment: a legacy
connector reserves a DDI whether or not a sink will be connected to it.
I think keeping that existing behavior for now is what makes sense.

> For the dynamic feature (to be implemented in the future), how to you
> see this?
> 
>   1) Should we allocate the DDI at HPD time and fail report the
>      connector as disconnected on failure?
>   2) Should we allocate the DDI as part of the atomic check phase and
>      fail the modeset if we can't do it?
>   3) Should we allocate the DDI as part of the atomic tail (hardware
>      commit) and raise errors if the allocation fails?

I think the only way for enabling the dynamic allocation of DDIs is to
do that whenever the PHY is used, i.e. when the PHY is connected via
intel_tc_port_lock() or intel_tc_port_get_link(). That's because even
AUX transfers for a detection need an allocated DDI. This is what the
patch is currently doing, however, that can be done only once the
remapping of a connector/encoder -> allocated DDI is in place and the
driver can also handle a modeset on a legacy connector for which the DDI
allocation fails.

> Another question: once we implement the dynamic feature, this "allocate
> on probe time" thing will have to go away, right? 

The allocation would simply have to moved back to happen during
connecting the PHY.

> In that case, we would basically suffer the same runtime risks that we
> would be trying to avoid, no?

No, then the driver will be able to handle a modeset for a legacy
connector without a DDI allocated to it.

> Perhaps I'm missing something, but, if not: I wonder if doing the
> "allocate on probe time" thing is really worth implementing, since it
> will be a "temporary" thing that would be reverted later.  In that case,
> we could try implementing the static allocation in the same place where
> dynamic allocation would happen.

I still think for now it makes sense to implement the allocate on probe
time thing, which is simple enough and provides what we have now (legacy
connectors keep a DDI reserved). Adding support for dynamic DDI
allocations will allow enabling 3 TBT DP tunnels instead of the current
2 DP tunnels for instance, but this requires a lot of changes affecting
current platforms as well. I think moving back the allocation to happen
during connecting the PHY - when the changes for that are in place -
would be also simple.

> >> One of the reasons I think we can't allocate a free DDI at the moment is
> >> that the driver is expecting a 1:1 static mapping for HPD interations.
> >> We will neeed to make the driver aware of the mapping in order to use
> >> the correct encoder when handling HPD events.
> >
> >Again clarifying, that the above is true only for legacy connectors. IOW
> >for a TBT/DP-alt connector, where IOM does the DDI allocation, the HPD
> >IRQ delivered to the driver will be already according to the allocated
> >DDI. That is those connectors are _different_ wrt. to the mapping
> >requirement than the dynamic legacy connectors, for those TBT/DP-alt
> >connectors the DDI registers will be accessed based on the
> >tc_port/encoder->port to which the HPD IRQ is delivered.
> 
> That's my understanding as well.
> 
> --
> Gustavo Sousa
