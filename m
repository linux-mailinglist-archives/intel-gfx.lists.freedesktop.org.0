Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2198887A162
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 03:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E32310F308;
	Wed, 13 Mar 2024 02:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqocvwK0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 596BA10F308
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 02:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710295746; x=1741831746;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=aenmB26JyxNx8RyH/FXpM2MkXLDD8lWHv6DiQNVzSTc=;
 b=XqocvwK0AtRPLKqPM3VAgh2z4+orcm+6+biLzB3oKPmJY5SXEl/W8S/r
 CV3OH7g0nxOoy3jEwig95sVsJ5wfpNjwJEn8CEbLslgpqqnkSXkMIMfH7
 28XTFauN2I+WOywkVjdPCDv2QtYQDqP3rqHQN9sjCEiWETfiShPVzf79d
 hJcq/j35Vj30AOEE4RD5ra3GzhEsaASZsPjGm49OIpjvb6IQDjoUawZqn
 e8pYMMVy7mLDQ+WSbLfmLrl3zxmZ6x1Nc40MExkUbnAQtxmNm57XPTgVl
 CnN0kL8hVKMzlHQ8FXRMrIbdcIBeB8Kvwwyi/cm7JoaHN92zWfyOEE3YR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="15764241"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="15764241"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 19:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16469420"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 19:09:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 19:09:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 19:09:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 19:09:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DI1+EWuvHA5TOrFHqUSBT8JaHuTvf/SfPdIL4uTlU+gwp6MbdHpwbAUqjFUqUw3xOGdZhqHEKEU8nzr+bBS/QlWCYNNXO3zbii1+GuRQWztBdJRFGb4tl3kls2kEcy3oOAWQYgqocIRmrRfirlzPFwjuPvJ56oIwJH3kSy/ItYm/GnfuZJeh+FrnVQrC2KAhjLbiZ4F4BM/EH7erQUDs9AvMR97+KdBiSf+VlNMOGui6g/pJb+5OQytavv8YTY7UqRRmGYNVCmjBfeIwncvDbU7BegCboJ+9vvRK8cnlTLGkKYQG27MbN5EjnhSyPlEUogByaCpdCRO6DbB1Fr5lHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5BV52VUw0Dgk9+/zLtmAowMccofJJc39Z4IVrSRRDY=;
 b=kVFkOmkxU+039jM3GVJ1LwMDJ+tIfGogIn3BBaXWPmGw4lL4K7GDznOnjnSkdI2uQ3b7BO5I2VLu/pElGzDSMhV8iomPpW7OQj87PTqE+7KXD9dLEaJ+FM59ucGwUhegxJtqijSBdPLK+52HSXS6RX9o9Q6WwgXgy2q6AaEDAMonqi3L3cCld5MNdSqOkSn8Jj55aibl/QIVz2d3Y7ARUNwkeVNa9LeF3CZ6qcSl8/R2OiO3h0z+BEKVRahZu0eJFrnNrrRhAbY5lvkX2bBSzneltxrP1cWcOhHA1Zv8r76eidWbo3tK0D3RmaWSAG+imCm0SOam8hy2i0gEC3xzpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB7252.namprd11.prod.outlook.com (2603:10b6:610:144::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 02:09:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.014; Wed, 13 Mar 2024
 02:09:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240312235145.2443975-4-lucas.demarchi@intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
 <20240312235145.2443975-4-lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 3/6] drm/i915: Stop inheriting IP_VER(12, 50)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 12 Mar 2024 23:08:55 -0300
Message-ID: <171029573584.160672.8616147436591193713@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:254::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB7252:EE_
X-MS-Office365-Filtering-Correlation-Id: ec50d224-b9a3-4379-0770-08dc43028cf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C8FNOJec8lAezz9U3hvuR6aLhMrbX9ZFiXUmRFZor0kBiW0bbKeZKfyI6bpcRsRzXbbB8+hm37K5hbfdVBy4x6ArA6L7b82b9Nh+NMFz8KPUFqqb8ZeMvzcWwa66cjKVmI/iyGGotJgF2vzNFYGwLSYXPZrTduPEsSK9IfOlsoY8hvm5zsu6JIoKg7KEjQKRi8dYjkfm7OeT/ssOzgMxWRgm0XsRDbV49r3FlJSUBkDYSJgmDJ3SiwVXUAcvLzbxfcrsvBpLpKFRWsz6WHWZa321yguJPB28fBQbDszxzhAMUR9hB2MaCcJ+fjuv+B7Pp8JQWMhIQVynHhmsW/K6sag8OIa4Nrtt9T1obyMxJmV96u47l9zAydwEtSKN4cGxs2+ZQOEN8q5zd/yTdZ1+2/5p3OEcpi8fCsjyMyYoiWH77kHEPNDqRZUWbDklYbYG0h6hbDhOhXGW95VUxWYKgngkjPUT4bPCPAt0qmmFcfZwNsWtEVxzN5d4CFvU2znIqoKxGqAxbaEGGAQ7DMAh4G7gl8T1dgKgsHne5838RO0AEn0ORHIQQeNQUhsH4b/mRLkwimHe03SQwy04ipSMxnk2R4fs6e/xY52fj7wHA5baYUEEUjYlxF//qiSy99Koozca40p6RyILibQHbzsfwVYaVR3oORgGI1KZzgSb7Xw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckd5dE1mbHcyYmljT05NcU9QQ1c4V1E0cVlaZnVNbkdob1h3dDYwdFp6YXhY?=
 =?utf-8?B?U29IOS9KbllaV3BBZEQ5REdtQWE2eHZkRVlwdWpGd2s3TmpsYjFtL0JZb1hP?=
 =?utf-8?B?UVVHM1lLUjdtMW9OYWZ5ZENYTWh3ZG9OUWIxVVpaUEpaUnNqR0VOcXFYZkJs?=
 =?utf-8?B?T2UyRGxubThSQmxNS2tqcGVyZXFHU0lJK3l6R3haUmRzSE1KZzA0bTV2YWdB?=
 =?utf-8?B?cmh4dVZtQjcvVGhPNnlkVFlmVzVYeDNKVk9VSm9zK3RJUXR4YkpFeHZ2UWtp?=
 =?utf-8?B?RzdJM0owUWN6L2k3R3hlck5OQTdFcEFuWEJCOEptdUFYd3UxMFVDU0NFMWVx?=
 =?utf-8?B?T2RuR2tPdldTMnVFUkxvMWxLREI2MXA5S3Z6azRRT1VhNTgrVU5XU0h3Z2RU?=
 =?utf-8?B?UEovY3c0cVN4VXFxa1c1RkhyQnErTE9RekFTUHVTMmMxSGxhUklUbUFkNGlj?=
 =?utf-8?B?d2Zoa1ZXTUkyalc5dndGaUIyaE1QbGFoUlVReWg0Y3ZPa2srcUdGRkdQTmFo?=
 =?utf-8?B?dWppN3c4M3pwRTZKZ3dRZTVMUWNFTFljRjJlRStJYzI4U3g3bVBNLzk4cVRQ?=
 =?utf-8?B?RUNiSEFEUThUT0FTZVVad2ZaNUNXaFhyTGhaK2FaRHpwVGFmamY5cHF1NFZ3?=
 =?utf-8?B?QS90TlpHMTdHOUxHTVFESm5xcWw2SkcrcDk0NmdwbXQzcnc5YWFoVEYvbVZE?=
 =?utf-8?B?OXUrcEtDemt4dlR6aWhmOURPYWwxMG4vUitBZmNQNEtKU1ZGZ05WZG5xRVM1?=
 =?utf-8?B?WFhwNzBvOTNxdHVGMUFWbWE0ZjFOMVM4R2NoUHdKRlViaTg1MkswYk54K3lp?=
 =?utf-8?B?S2lnc1JwV2tmK2plVlBnUkdSVTdPTUtsd1UyOHZOUTZkaEx3aUplRE5xRUg2?=
 =?utf-8?B?MlErWWpnUnZoMFk2d0kvYXZFY3dBS3R0UUJ4T0xOVzVIYTNBY1FzU3BuNS80?=
 =?utf-8?B?UkdBLy9XRkh4YmRGSlVqOU1BR1JKcmIydzhrNHpmY0pKa0dZNjRRalpqbTdK?=
 =?utf-8?B?QzF3UXM1cjVVS1ZuK3FYQ014dllaWHJCcURiUWlxeWpacWR3YnJKUHJFQUJi?=
 =?utf-8?B?WTZYaUxQbkR3VFlpcGZvS0diMXhrWjc0eC9EM2E5NGxvK3BXQ0NsQzZCbTZq?=
 =?utf-8?B?RnQxM25nVkczeWJJZFp2ZmdOc3JpMk9MbU00S1hPQVdSSFpIcnNVMEZ5cDRU?=
 =?utf-8?B?SDdudllkODRhOGFMczJPTkJ6OUlyT2JjZ21GRFQ0U2RWK3lQSzB6SERGN04x?=
 =?utf-8?B?UWZoWnhEMkk4a2V6UlVOcFZJdUk5QnNzNEpVMVJ4clhrejJyaTBQYkZMRG1Y?=
 =?utf-8?B?Um1PYlF2dXBzKy9XNG1SUGRZZUw0U2I2RlZYSi8ydXd0MmNTV1ZMZklvSll0?=
 =?utf-8?B?WGFLeEQ0L1JLdWZGaWJnM095d0lqQ3o1M2lnbzRBWk5RQUJZRDI0dHpjU3pM?=
 =?utf-8?B?cnY3emRueGQ4bVE4Q3QwR3lCQVQ5cXpqVkdrVkFyT3NQTnJXUEUxUURwbUk1?=
 =?utf-8?B?Sk1MamtXUzREMUt2RytuNVZwTFBDdWR5bmtyY3krai92dkgzcXoyR0srTXAr?=
 =?utf-8?B?dmJQQ1NGRGdFQWdLQ3krb3lJUDNubldvb2IybTIyZnNYTGs0YnZqdFc1STZW?=
 =?utf-8?B?VklXVTJnVFg2OGNCMlByYXNyS1pGbHdmMGhTcmFrbHVPVzFOU3VKdXhodTdN?=
 =?utf-8?B?V29INzFzWURFdXZPbXRyeFdYNUgzY3F6NUdYTUgzUWVTN1FIckRXTGY5S0J2?=
 =?utf-8?B?LzhvTzdKT0cySUZIUmZlRTNyeW1hN1FtMDlhcXBVVjN4UGxzMXdOZm50RTRS?=
 =?utf-8?B?NFkzZS9BVWwzSy9ycGg4OXNYOTd2MjlBZTBrTHZGeGhwZTJWRld3Ykovd2No?=
 =?utf-8?B?OGxTUkdHWG1WVUFrVzVEQUdGUmRsbEpBSW1PZzZVVGdsbDJXbUhUSGtPbk1z?=
 =?utf-8?B?SHM2ZTBqWm5JOUJSTHVjcG9YdmpkZU9FU2pldFA0OXFWS0ZpcGZpSDNTWlF1?=
 =?utf-8?B?MGQyc1hxQldGN0hMZ0tuRTZHMy9jTEtzREZNcE9RRkRPZU4wYlBNUTkxeDZO?=
 =?utf-8?B?UUxxcktBV3ByTmp0VU5SZHQyZW9JNWlNY1EvcFpTQzZ2YThTbzhKd3hseVRY?=
 =?utf-8?B?K2crMU9UQStRVlk3d01Ia2RtblNkanpTYUJJODFnUkpuUGtBczRWZjBEZmRJ?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec50d224-b9a3-4379-0770-08dc43028cf0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 02:09:01.5674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6mcm2gTc/p3qAgyMpocR4uVG8wx/dkQMHBBlKnPm1uahbHBV3Gxqb82aMC8ls/JtYugTp7vz/M4K9FHBvnHpRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7252
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

Quoting Lucas De Marchi (2024-03-12 20:51:42-03:00)
>All the platforms that inherit the media/graphics version
>from XE_HPM_FEATURES / XE_HP_FEATURES just override it to another
>version. Just set the version directly in the respective struct
>and remove the versions from the _FEATURES macros. Since that was the
>only use for XE_HPM_FEATURES, remove it completely.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I took a look at the patch and also checked with the following script:

    #!/bin/bash

    parse_info()
    {
        local rev=3D$1
        local out=3D$2

        echo "Generating info for $(git log -n1 --format=3D"%h %s" "$rev")"
        git checkout "$rev"
        make drivers/gpu/drm/i915/i915_pci.i
        echo

        cat drivers/gpu/drm/i915/i915_pci.i \
            | grep -o \
                -e 'struct\s\+intel_device_info\s\+[^=3D]\+' \
                -e '.__runtime.\(graphics\|media\).ip.\(ver\|rel\)\s*=3D[^,=
]\+' \
            | awk '
                /intel_device_info/ { cur_info_var =3D $3 }
                /__runtime/ { info[cur_info_var "::" $1] =3D cur_info_var "=
::" $0 }
                END {
                    for (k in info) {
                        print info[k]
                    }
                }
            ' \
            | sort \
        > $out
    }

    parse_info c70b324e95d2a06d663111ce3498729e1f9729f9~ /tmp/a
    parse_info c70b324e95d2a06d663111ce3498729e1f9729f9 /tmp/b

    diff_content=3D$(git diff --no-index -- /tmp/a /tmp/b)
    if [[ -z $diff_content ]]; then
        echo "Patch looks sane :-)"
    else
        echo "Patch generates different IP versions!"
        echo
        print $diff_content
    fi

And I got the following output:

    Generating info for eba0fccec7de drm/i915: Remove XEHP_FWRANGES()
    Previous HEAD position was c70b324e95d2 drm/i915: Stop inheriting IP_VE=
R(12, 50)
    HEAD is now at eba0fccec7de drm/i915: Remove XEHP_FWRANGES()
      CALL    scripts/checksyscalls.sh
      DESCEND objtool
      INSTALL libsubcmd_headers
      CPP [M] drivers/gpu/drm/i915/i915_pci.i

    Generating info for c70b324e95d2 drm/i915: Stop inheriting IP_VER(12, 5=
0)
    Previous HEAD position was eba0fccec7de drm/i915: Remove XEHP_FWRANGES(=
)
    HEAD is now at c70b324e95d2 drm/i915: Stop inheriting IP_VER(12, 50)
      CALL    scripts/checksyscalls.sh
      DESCEND objtool
      INSTALL libsubcmd_headers
      CPP [M] drivers/gpu/drm/i915/i915_pci.i

    Patch looks sane :-)

Based on that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_pci.c | 12 ++++--------
> 1 file changed, 4 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index b318b7c6bf73..8b673fdcf178 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -705,8 +705,6 @@ static const struct intel_device_info adl_p_info =3D {
>                 I915_GTT_PAGE_SIZE_2M
>=20
> #define XE_HP_FEATURES \
>-        .__runtime.graphics.ip.ver =3D 12, \
>-        .__runtime.graphics.ip.rel =3D 50, \
>         XE_HP_PAGE_SIZES, \
>         TGL_CACHELEVEL, \
>         .dma_mask_size =3D 46, \
>@@ -730,15 +728,12 @@ static const struct intel_device_info adl_p_info =3D=
 {
>         .__runtime.ppgtt_size =3D 48, \
>         .__runtime.ppgtt_type =3D INTEL_PPGTT_FULL
>=20
>-#define XE_HPM_FEATURES \
>-        .__runtime.media.ip.ver =3D 12, \
>-        .__runtime.media.ip.rel =3D 50
>-
> #define DG2_FEATURES \
>         XE_HP_FEATURES, \
>-        XE_HPM_FEATURES, \
>         DGFX_FEATURES, \
>+        .__runtime.graphics.ip.ver =3D 12, \
>         .__runtime.graphics.ip.rel =3D 55, \
>+        .__runtime.media.ip.ver =3D 12, \
>         .__runtime.media.ip.rel =3D 55, \
>         PLATFORM(INTEL_DG2), \
>         .has_64k_pages =3D 1, \
>@@ -773,9 +768,10 @@ static const struct intel_device_info ats_m_info =3D =
{
> __maybe_unused
> static const struct intel_device_info pvc_info =3D {
>         XE_HPC_FEATURES,
>-        XE_HPM_FEATURES,
>         DGFX_FEATURES,
>+        .__runtime.graphics.ip.ver =3D 12,
>         .__runtime.graphics.ip.rel =3D 60,
>+        .__runtime.media.ip.ver =3D 12,
>         .__runtime.media.ip.rel =3D 60,
>         PLATFORM(INTEL_PONTEVECCHIO),
>         .has_flat_ccs =3D 0,
>--=20
>2.43.0
>
