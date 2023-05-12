Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC127006C3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F258B10E688;
	Fri, 12 May 2023 11:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB5B10E687
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 11:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683890789; x=1715426789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LqCeBx8RGT4DKZMwXLQS5/dlgnakM7Xn89yF53v2ZHI=;
 b=aw9w6MJnWXsBIMppEoV502PGo5U64yUNx1utFlfdDnF6EMxZBwvZKuHp
 PkaTQw+e7qS4iOUrxUhSQopWnsT1iqC9KUzfGbydhmUW6rhIGe2V35XCV
 1n3lIbcxeZNo5zyQWDq9dRlb4IwhfTa+ZrLm+AelsiMwQy5bopwY3vvSf
 T3/Qc4iKoZ92pkruvIR6GNW4r9OU+H4Smujx/VoJbZn+m6rwizD6zL3/6
 USoWWCde2m1HL1649zWsHE7aGz694vEqLcFI1XJY3HLzbhDgz2/i7p2fv
 YtZk/l6BDW8kUkir6fVXLOYd9caOa7ADUSfnknlINLsLhFVkObvMapGBA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="330386872"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="330386872"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:26:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="650611512"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="650611512"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 12 May 2023 04:26:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 04:26:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 04:26:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 04:26:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 04:26:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3Zt1BtBH6DkiTcCgGvsamyAfzVTU9zWv2jRwjR44T5zSPhx+onR62wu+9Y+qV9YxjjhJfNsygTdUK+FuA8sb1MpMnqKxpdcFNVZ+MumNXS070otUOpYLSlJIMnRfurXDLqNHMMo4N7h2iLqDtPsY90XfJxgrJCTzzkR6kxrE8mzvyKG65lm0/N6mK2cvDSed5/NDzezx8NuhRtUmO7wvpkUYngcxj2IIF1um8ATBFYkzYp4atcCVU7DTsZUchxmxy774BhMExpJpxOAERTOGc0TAduNO5fEGsnbMe/GBdPhNOBNWKNOrv/PhUbnM4lxNP7uHOSznr1ccxWTR0Bgvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jYbE1OwsVtiVnHwuvLWBx53o0cfHPWFaG6vbGg7OzKg=;
 b=JWqAWmSXeJ2as+GhdMknYym+MZdkh1akEFA1/5okzCgLmhxrkPXkjRy5xA8PpT9WUQRFogKn9W0CBKbwY0QrXAjlaPjqHxfnnZy3dSwkkK99hEEiXzQNTYmahoCDfG/X0bzLTBDFEpsv1q9Steqho6ByOzo8RiPMLyjH09u/XSOSpnuG/ebu9lY/gxqIq5DqsTjIisgUpyC1/VxzocGfWZW5eAmQf4X2PehYI+HHnn8MpRYQLfLpK0tce/Okk9Sje7ZzXkOLXXZI4t9UkuBwScvKT0uFYsGuuZgDnr32OBZ9eLx76RIjNwW3AR/NWo50WlmmIzwaCxj/AVUT22uG4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5648.namprd11.prod.outlook.com (2603:10b6:a03:302::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.23; Fri, 12 May
 2023 11:26:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.024; Fri, 12 May 2023
 11:26:25 +0000
Message-ID: <fea2f4ae-8baf-ef80-81f7-35b3138b3b2a@intel.com>
Date: Fri, 12 May 2023 16:56:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230511095650.631387-1-suraj.kandpal@intel.com>
 <20230511095650.631387-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230511095650.631387-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0227.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5648:EE_
X-MS-Office365-Filtering-Correlation-Id: f7e4e477-ebc2-49b5-7e8c-08db52dbb84e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rISv6D3UPw1Ndk9b1LwOl63JzXteEEg3+hz7XwsCHLnAnsi5H3EN7ibOWKmkfVoP6Y2EV64IjPXipKsPEblUEo68QP10QR3kb1YYDGY14s5+MO7cRPmTeaevXzMTGgrxgwvvOcHpkpkmA3OrFQygFiZAGsJBhoqR1F1S76wALc2TMsdIa1G7Ppte81ilG5CMPPdqIBcuzy70gPdmJcaby4uiY8kEN6wykh6y4yJTg3giwZHFqUjU90BkJm2aSpypmPUcY2yK/0pnjw8A1mtPasntDM35+N3PAFs2FXjr3u/L+IgP/eMVb+Cgae/byKTA3IRJtvVNfGMobrkZPrVI+pTTYMxP3PBdLy8T3weXF1lAkDufv6Mr41pZ4czlMEUtKUJYMId9uM8aJHu6xE0l3eV89mRS2YCuzLd2aZ7xXmo1XQEo8c0fQ5O/sbUvnAQmohApc+u0+DGc0jsgkMjTQtwEGPociyXkD5o/qkbICz1unU+xaAOmaGoxXJsOnz9nkIESGm5BpTJhmU0zluAQT6viKnFwSTgwhbufSS0pJohIwk7HlaIpEPnV7CNbAQt5vzfJZlPV96aD4/UujBokrLlGrkpG7q+Wm0Tlr8Ytj9aOuqsH/UdnnFxmvZfVcFSjQdK7TUaAstX0Bol9h5pqPw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199021)(5660300002)(8676002)(2616005)(83380400001)(66476007)(66556008)(66946007)(8936002)(36756003)(4326008)(316002)(86362001)(31696002)(31686004)(41300700001)(6666004)(186003)(26005)(478600001)(6506007)(6512007)(55236004)(53546011)(2906002)(38100700002)(82960400001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjNtR3pyNU5STHdNandRaXZ6SkxVTkZKTXFxN0dFQUNjaXJ5eXpveXZjNi9a?=
 =?utf-8?B?NDBDMDBIZGNSRTNmVERmUS9hdjVzSit5UFJHNVcvbzZlTmRCREYzT0kyd3ZE?=
 =?utf-8?B?eXlhUm85Nlh5NDlWKyt0YWFsaWdMUVBnVFFuNWUwTDJmMXVKM2lOdEVDOTdH?=
 =?utf-8?B?MDRiZ3BJZ0l0YTRvRlVkdGk1dTF1MGtjd0lhOGNYVjhQME9pRHNpTmZMbnQ4?=
 =?utf-8?B?T2c5Q3llb0ZScWRDanpvNkk0WE9ybUczOGo2QzJzbjhXRFFQdFZHYmtHbGN4?=
 =?utf-8?B?SURFSVdwdUNyVGR2OXVVeERJZVlkTVB4OG5yQ1d3L25weTA3VHh2UUxxZjF6?=
 =?utf-8?B?a20wbURLZnNUQzBMZ1JPRFBkRkpoME03bFE2TXhKbXJSV1VoL2NJdkdjUGpx?=
 =?utf-8?B?WUdXYjVTeWlkWjRqUlkvSk9KcW5GbkgxUkU5QlR2cVVpckJuamdtamhEN1BW?=
 =?utf-8?B?dDljMytma21vY2doT3ltdCsyblEyWC8rMlVtRXVEZ3hxRTlqaGJuWEtsS01R?=
 =?utf-8?B?YnhSK2dObnEydzcvR2Rvc1FzSWxCUGRqZWo5SmlMNUc1bzhhc0pGRmxneUJz?=
 =?utf-8?B?VWUyZ1BUMmhDSmswQ21SQzd3N3g0NkhDVnRDNDBtT0NXK2RTUVpHTTJ6cDZ3?=
 =?utf-8?B?YVJrMnlnUDA2Mzd0a0dXRDA4NGsrak9NL05KT2lsYnprQVlUYWdoem5DRmg4?=
 =?utf-8?B?QnZuSVdRTi90L2l2WSsyNldhNm5JVE5ORytCYXlxZDZJdFRZYytaWEZrRXpq?=
 =?utf-8?B?dUFxK3JEbnFmZzdGTGZEeHhRQUtTMURNRDJZOU01UzBRSFpWTkU1eWdwenBR?=
 =?utf-8?B?Q0lXZGZBZC96UUI3WXNQRG1YVnRqOGhTRTl4QW82d0h5YThva3JUV3FmbFg3?=
 =?utf-8?B?L25ucUJqazlyK0E1Y1U5NlBOZmJtUDQwMUcrNFdMMWJoY25jc0VoSHZWWTI5?=
 =?utf-8?B?WDhnOWRrUlRrRTl0MDYzZE9vVTRWNDltdXVYMzZPWGVWZkdvek9Fbm1HKzlp?=
 =?utf-8?B?eEpOLzVzbFZkN0JKSkVBcXFGVFlCd3ZDMisza0pBZjJLUDJrWU1jTkxKS2ow?=
 =?utf-8?B?bmY3YVpLbkE2N0FWZEthV2VyM2t1bm91VDRkQm5XVUtUakhpSGFSNXh3clF0?=
 =?utf-8?B?L05iUUpDSWFvZzhIRkVSQ0ZIVGFzWlpMTGpOSUl6S1BjT05MYVFkLzlzNFFG?=
 =?utf-8?B?NkNwLzhQeVJLSjJhV3ZVYyttQzdpZm52Q2lINUtHRW9hcEdSWlVqY1p6S0Yr?=
 =?utf-8?B?alB5SXhXSXFkWGFTZFYwYVhrZWtCUWJYSmtydHVndkw0TjhnV2J5QSsxbXFj?=
 =?utf-8?B?UFVkVThFTG1iL0dFcmIva0J4ekVnZmlQV1VGS2xPNnBuN2V2N3drSHZIdlpR?=
 =?utf-8?B?WXdPSEVQTzN1azYvZjFRTnJPNXF1Uy9qNHdodThMODhWWU1jZ2FoVW1iSFB2?=
 =?utf-8?B?bnJxTWFBSWFpcWNhTkZoRGNHcG1kTWVjQWRxSVhxckxhamtiYUdvNWs3VWtv?=
 =?utf-8?B?S05ydjh0VmU1MEUwejErM1pVTEg3eGFOaFBrMVFSWE9uZVgyWURBSUVVWW1O?=
 =?utf-8?B?RmhVVDJlZHp4cHFZdDVwQWo3NGhVa2wrUDc4b1NFUEhEMnd0d2FmM0dDZkpD?=
 =?utf-8?B?em42Vkg2WVdFa3JkSWNlbXhlMGVKOW5VKzhPV0lEWmcvc3FmbXFEUTNzZVZv?=
 =?utf-8?B?N3JiK3RUWUNkSk56b1kwbFV1R0FqQjdlallRY1p6a3JzSS9MOHBJQm5rTjFC?=
 =?utf-8?B?UGFYNS91Zm9mc0JESjdMV1Y1bGdaR2c4eHBleHpDWjdRZzFwZEtuczZxNUQr?=
 =?utf-8?B?NnhnSi84YU1YMXRQMDJwWmJjWjloZkd1SXhSZFN1aEJRRlVPV0VWenA4V1pj?=
 =?utf-8?B?M2NyY2R1RHhhL0xCNzZBanZ6eFdvVFdyZCtwSFNET2ZYTmZNT054Tm5raGtI?=
 =?utf-8?B?SDlRZXFrbjRFVzBtYmdaY2Jodk43Nyt0c1VaZjQrQS9mRHc2Zk0rQmt6SStP?=
 =?utf-8?B?eFpXTElYNitwYUNhMzV3TzVsZ0d6alVjd1V5ZGpTNUkxbnlJKzREKzNPc3ho?=
 =?utf-8?B?emlQTlgwaDhwQ3pPZVNHYXZZTW1YSHpaM1lsajN6VG5RTFk4ME9JMGpCcHZK?=
 =?utf-8?B?bm1lQjBrSG5SeUE4cXpCSnlkU0gyMVltOUY0WDAvMDVPdi9ubzQrK0k4TXMw?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7e4e477-ebc2-49b5-7e8c-08db52dbb84e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 11:26:24.9560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iqrRSJ+7e1UZ+K8qhUKEDtwt1C15EWgZiJJo28z7zo9ZqMZ9tGY2RxD2115bKc+eOTaJBHeXndLdNBhjKYjj3+oWk1xZGtG+FlbFsxOzKGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/hdcp: Fix modeset locking
 issue in hdcp mst
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


On 5/11/2023 3:26 PM, Suraj Kandpal wrote:
> Since topology state is being added to drm_atomic_state now all
> drm_modeset_lock required are being taken from core this raises
> an issue when we try to loop over connector and assign vcpi id to
> our streams as we did not have atomic state to derive acquire_ctx
> from hence we fill in stream info if dpmst encoder is found before
> enabling hdcp.
>
> --v2
> -move prepare streams to beginning of intel_hdcp_enable to avoid
> checking of mst encoder twice [Ankit]
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 39 ++++++++++-------------
>   1 file changed, 17 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index e2c5781ad0ab..bf40d1c7aaa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,7 +30,8 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -static int intel_conn_to_vcpi(struct intel_connector *connector)
> +static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> +			      struct intel_connector *connector)
>   {
>   	struct drm_dp_mst_topology_mgr *mgr;
>   	struct drm_dp_mst_atomic_payload *payload;
> @@ -42,10 +43,10 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   		return 0;
>   	mgr = connector->port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, NULL);
> +	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
>   	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
> -	if (drm_WARN_ON(mgr->dev, !payload))
> +	if (!payload)
>   		goto out;
>   
>   	vcpi = payload->vcpi;
> @@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   		goto out;
>   	}
>   out:
> -	drm_modeset_unlock(&mgr->base.lock);
>   	return vcpi;
>   }
>   
> @@ -69,7 +69,8 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>    * policy to mark different content_types for different streams.
>    */
>   static int
> -intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +intel_hdcp_required_content_stream(struct intel_digital_port *dig_port,
> +				   struct intel_atomic_state *state)
>   {
>   	struct drm_connector_list_iter conn_iter;
>   	struct intel_digital_port *conn_dig_port;
> @@ -81,9 +82,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   
>   	data->k = 0;
>   
> -	if (dig_port->hdcp_auth_status)
> -		return 0;
> -
>   	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>   	for_each_intel_connector_iter(connector, &conn_iter) {
>   		if (connector->base.status == connector_status_disconnected)
> @@ -99,7 +97,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
>   			enforce_type0 = true;

Although not related to this patch, this seems to be off.

This does not seem to belong in loop, as dig_port is passed in the function.

Seems like we are already setting dig_port->hdcp_mst_type1_capable based 
on the topology earlier. (even if any branch/leaf is not hdcp2.2 this is 
set to 0).

So type1 content cannot be shown if dig_port->hdcp_mst_type1_capable is 0.

This would cause an issue with existing patch, as 
dig_port->hdcp_mst_type1_capable is currently set later during 
authentication.

Regards,

Ankit


>   
> -		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(&state->base, connector);
>   		data->k++;
>   
>   		/* if there is only one active stream */
> @@ -122,7 +121,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	return 0;
>   }
>   
> -static int intel_hdcp_prepare_streams(struct intel_connector *connector)
> +static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
> +				      struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> @@ -133,7 +133,7 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
>   		data->k = 1;
>   		data->streams[0].stream_type = hdcp->content_type;
>   	} else {
> -		ret = intel_hdcp_required_content_stream(dig_port);
> +		ret = intel_hdcp_required_content_stream(dig_port, state);
>   		if (ret)
>   			return ret;
>   	}
> @@ -1917,14 +1917,6 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
>   		ret = hdcp2_authenticate_sink(connector);
>   		if (!ret) {
> -			ret = intel_hdcp_prepare_streams(connector);
> -			if (ret) {
> -				drm_dbg_kms(&i915->drm,
> -					    "Prepare streams failed.(%d)\n",
> -					    ret);
> -				break;
> -			}
> -
>   			ret = hdcp2_propagate_stream_management_info(connector);
>   			if (ret) {
>   				drm_dbg_kms(&i915->drm,
> @@ -2375,9 +2367,12 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_capable(connector)) {
> -		ret = _intel_hdcp2_enable(connector);
> -		if (!ret)
> -			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> +		if (!intel_hdcp_prepare_streams(state, connector)) {
> +			ret = _intel_hdcp2_enable(connector);
> +			if (!ret)
> +				check_link_interval =
> +					DRM_HDCP2_CHECK_PERIOD_MS;
> +		}
>   	}
>   
>   	/*
