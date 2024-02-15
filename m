Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE043855C28
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 09:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFF110E245;
	Thu, 15 Feb 2024 08:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHeyvL7h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C3C10E245
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 08:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707985047; x=1739521047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9wG18jTK6PTDPjroYUAbQxXX6FXGFOS+DS9xbii+fbw=;
 b=GHeyvL7hrXRzShKAljX4f/e+ShUXiAFAwunwKBwKqzegCVg3W0WnOoFz
 nFnWoP/nI4e9kTO2RsKroaEXlFrabacnQNxO1YxJ6Suqx65cYhl/K8JZZ
 3pYZPzrhvOZRaBJW5xzTUuEHAaiyQyea8Z0juWDnv0qslPfPZ8rGI2WKX
 oSjOGdqeq+YgOJ7cLqi175ZEYybwI1Bxsio7TzlMLmcIU86U0BDcOqYZu
 EyRINuiQwQRoYxmRNVPwNAta5KESE+0eLSUcEahZnVbPhbTljoDF06C4b
 PLkZ5K3pdHDPitydAu50AX0wubzKjwfriAZQ0T8c8Qnn66IK6P947JbS5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5833760"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="5833760"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 00:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3438048"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 00:17:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 00:17:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 00:17:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 00:17:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 00:17:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNcD8NzssMHBZJPJ84lXgGExSNza7STf+avBNPj4/MN7uP7/9BD3+NAy4RC2t7wmFonTC2SFX7rr/7BW2M+EJlXx4H6ls1fraq40ThNp2XQi1VPGWIIpdvG9YFfZdfLe4lVx9B6MDVP+3MjELCGIKA4tKTEzEPtbNUGthTai0OrvkrRenUrPwiL5CJmWU3xqwm0Dg41DTHxHvbBs7wNv2LvWqdCW5+yaO+auuR1OnJObLou828JPFVlZPQ9VYOrA9GYozPEhnbtNCpJ7/gSSHPfQJno7cQ5MY1bCQ2n+W2Thc/vMz1Oo3x4jHEMEvrW3ArE2MxmWL8Xe/yuiOESObg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAIjJ0FIggMfVB3X0JPIpjC1ysOXp3C6vfnkAAsH3ts=;
 b=FQDjCk1tlzgQsnE6bqR/O76bXAC+ePiI6JZbrxJ3l7ugv1uQxbMbH1wVnBcRqR18PrIcDP9N/l76Hf7eMcfARV1vOEXSBKm4tqPrlxxwDwhEfmwweBo3ifuuaTbQi0RFFtn/vMJ0qvKpJMDon2nvKvGNaD2QTp8QHENCecK3yh3XIYIXdtS2EohOdElSxfpGovoGkUCqWEhEQ8zKGuXrvdVbXHT/Q6RnLUQYZwH7aZ5DWSmDOv5Ukb5KdpjDXskcvtyPsMQ2VbClEktcDlT2hwVg89MzndDzyN0grzyYMk7hKouUMNxtm4I2Eqq4i+eBEap8g2gSZklCuKFn0YsneQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7253.namprd11.prod.outlook.com (2603:10b6:8:10f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Thu, 15 Feb
 2024 08:17:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7270.043; Thu, 15 Feb 2024
 08:17:23 +0000
Message-ID: <4bdad735-be7f-46ac-bf73-90397c343337@intel.com>
Date: Thu, 15 Feb 2024 13:47:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/12] drm/i915/hdcp: Allocate stream id after HDCP AKE
 stage
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215050524.1425206-1-suraj.kandpal@intel.com>
 <20240215050524.1425206-12-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215050524.1425206-12-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0242.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7253:EE_
X-MS-Office365-Filtering-Correlation-Id: 94926b4f-3ddc-40fc-eede-08dc2dfe895e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g/bWf2tSB4sXbq0nCrQJfI9u0kATDNie3yIol9MXGj/SSPkJpYqesw6Yq94sXt3P/oQl7MSVA+FukOY7JBAKNv44Nv5uxL08HeyD1nN+KZjyGC3gpBNT7oMwn8Dqu0CuAkxtmDwEn1yLuJhfWQS7DZNAUtC2cR0VSvJFwbaCiYfvGmks5h6Drtd4yiHPvjrWjD44ObIptfj3CXSUH42BMrMWB9I9D6dT4Hhw5uacne5LQeBsr2od7NiPdHem4QgcVTFM+4J8r6EGTK8kquKZR/gIQpZmgMdJWGbxUSkp4iHscblbnJlwuKKfekKL0XTMm8CWFDW51YvYukJLGESzAbihEPNyQoMr8EIKl/bcZ+GbdYc8fUU6etrpbcVbdJrGqJWSyzsEDm3Sbsmgic1oKcJAFnoF0a4G27LNe6t9o615a2jASMcX0Lz6vjhxXI7ux1oqIEYo1cYooOnJg5cDQ1eVds1X+2QCc3vUbyN1B1YED0AAaO7QxrEB/Ob1uq/B3+/BUltwnJVTgosrTdfzOTJl4LwtSx2jNatTz7PL2w4mvseNRuQ1KhscLC3Q171b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(366004)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(2616005)(66556008)(107886003)(83380400001)(82960400001)(38100700002)(41300700001)(8676002)(8936002)(66946007)(66476007)(5660300002)(2906002)(4326008)(6486002)(6512007)(478600001)(26005)(6506007)(316002)(6666004)(53546011)(36756003)(31696002)(86362001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUVHTy9BOE9PQUx2aEpmaVBBazlkcytwTnZOZ1h1cUhUanNlRjI4Q3dHL1FY?=
 =?utf-8?B?N0p3OWkvUFlDUDlRRWZDWE1NcjhFbS9TNXB6VEdoVUVhNTkzUmRZVFg4ZGdn?=
 =?utf-8?B?elc4OVRYYzc5ay9QaGtmVUhJV1oyQUo1MDRvUkNlMVVWdzJ6aytyR053Zk1X?=
 =?utf-8?B?dHcrZ0cyb3Nyc1phQW1YV2hkTXVIS0s0ZnJwZFFVRGgzWVVVWGhoUE5ucnBm?=
 =?utf-8?B?clF3cWhETmhoajRuZjJHQkV0UUlXOEJIZHZETXAvTmxCN3NvR0VPK1VaZS9O?=
 =?utf-8?B?Z1JNeGQvajRsL05QbXRmc3k5NCtEcEtFN2QrK1VWRzEzUXBubmtoMGJkOTlx?=
 =?utf-8?B?YnlTbjJHT0FZZy81TERQdDF6eFdvOHRuM2QyVWZudU9HeTd1UTQ0aFJXRnMy?=
 =?utf-8?B?N1NlcWtvSFE3R0NjenRSS3p3Nk5LOG44OUNJN0JSVUlJNWNNbnJmTUJCMTBq?=
 =?utf-8?B?ZWFwY2s3Ulk1MHJac2hNMVhGU09JdnorR0V2NW11czJZRjlBUjdLb0ZWT0Z3?=
 =?utf-8?B?WE15V2JWRGljai81dWhkR2syaWg0NllQYUZ3SzRvUzMvSUlHTVQ3Z3pteWhH?=
 =?utf-8?B?eVU4Qk9DY0FpUXErbHIxaS9FR2xKalRXZDdzL2xoYk9MWkZUeG9BOVRURU80?=
 =?utf-8?B?aXFnN1ZHQXNDVHEwTXhhRjdKcWs0b0ZiT0l1Q2ZvL3BCbXRUb0hiTWlkOWtI?=
 =?utf-8?B?Ty9VdDVxbk8zZmlqT1FSZHdKVk5MblllNm83ellXWGdOeW9CbWo0akFSamVk?=
 =?utf-8?B?MSttMXc3TlVBdDZVOGNHWEpTUEVjSHNRVk14Rzl4d0N3NGRmeVl4aXdadEhu?=
 =?utf-8?B?TlhBeEhzbVJvMVJWeVU1QS9ISVh4bWlwNVZSdXVuaEFTeVVtbnh3L1pRVnIx?=
 =?utf-8?B?aDFiTjh4WXNmanRnSENNbFdkRVFlR2tIOUxFalF1TEZUblorVERaQXg1cTFs?=
 =?utf-8?B?REpSTEtHYkJURlJCZjFkNy8xckFsZmF5ZTMxYm50ZDJHN00zd3NGRGZZYjFT?=
 =?utf-8?B?RU9RTzR2U0JwdFQ2MVFHNVQwQk5MMDFINEEwV2FtcUVHb1dRVTBDbmlLeTAx?=
 =?utf-8?B?UzdZTmZ4U2VLaHZwRTYvZmp1L3hWNHowWEZnVVI5dGhrMGlQbVUzQmI2bzV0?=
 =?utf-8?B?NFNNMVVWSDd2T0Q0R0VDVzQ1YjZPSEVhaDMvSlRzQjFkclRmamIzWmNKbWE5?=
 =?utf-8?B?NUJGN2N4TGcyeEh6VTVMTEQ0MDVBZnN2NUxNM0hCZVkrano4djF6a25kRWF6?=
 =?utf-8?B?VWphRjdFZFNkdTBKclJ2c2xCSHBRMmdHOVlIYk9mYnlDdjhmS0J5WW14czhT?=
 =?utf-8?B?R25McGpoVW1zL1I5MUdDVE1DdTVmMjV1VkFGcnc4bzVydG92QitIdHczdnMy?=
 =?utf-8?B?d0FMNGZtekxHMjY1cU9mSGFBYjNMdU50bTZkekdHWUcyWllxVW05ZGtMN1hD?=
 =?utf-8?B?MnZiTWZMMWswUTY5NTNIZk1SL3pJZXg1aUdNc0lWLzBObmErUkdwOCtZK2g4?=
 =?utf-8?B?WVVaWWtpclIyc2pDS09EUkRJLzIwbXZWS3lheGtXd282MXVNMk8rY1dCenhn?=
 =?utf-8?B?ejZGQW5NK0FGMktVS05qSldtYytPNjlwbDRQSHBZcy9EWkR4MVdOUzNGcm9I?=
 =?utf-8?B?a05PSTlHZE85K215Qm5jaTVqVFZOS2wra084U0drU2phMjlVUHNCdHorb0dE?=
 =?utf-8?B?MFhmTVV0Y2NPMkRrcElsL3JxcnVtQ0hkazlaSlVYaDVOTFFtL3I0MytkMDVx?=
 =?utf-8?B?Y2JDMlJOSklQaEhzVUlVQ2xPOENMbkU5YzB2ZDRxK3hYaVRPMnRZN2FmaGpt?=
 =?utf-8?B?cVdFK3pIM1R1OFRxM2gvWHR4K0lPMkh2RVZzVGFiMDRnUHdUbVVVa3BSVE5X?=
 =?utf-8?B?dERJUUE3d3A2UEFrYnFWS3h3aEpQUE82dkxqendFVVBrck13cFI3TkJyd0VP?=
 =?utf-8?B?ZXFnY2JDY2pHVmpRZUFYV2VLb2poYWdlU0NMeUJLNEVLMGIvbFM5WGhUUXZL?=
 =?utf-8?B?QzlIcHE5d20zWW9iVGxoUDcyRVcxMk1xMjNid29vRDRDcGplMGxwZ0F3RzdH?=
 =?utf-8?B?cUx1aGJPUmlqRFJxRVlXNkdxbGlXRS9RaC9ZM2EvZnZacXFtNkRuT0NKWHFl?=
 =?utf-8?B?VFh4Z05RczltMFVsd2xXamVOOUVtV3NFa25JbnV4TjJmQ1FxL0h4R2VxRlpU?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94926b4f-3ddc-40fc-eede-08dc2dfe895e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 08:17:23.0423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: unJLHwEOKlE/VCUvgux6MLpwqliNjXrbPAJRw4LLhe6PPJNFsnnQXfPCTmW3do9/JTUqIU3u0TrtpNYqEE0kvJTQjhkLQ86jfZ01bmWDtOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7253
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


On 2/15/2024 10:35 AM, Suraj Kandpal wrote:
> Allocate stream id after HDCP AKE stage and not before so that it
> can also be done during link integrity check.
> Right now for MST scenarios LIC fails after hdcp enablement for this
> reason.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 126 +++++++++++-----------
>   1 file changed, 60 insertions(+), 66 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index b22dbc6494e0..627b3e24197d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -68,19 +68,52 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>    * DP MST topology. Though it is not compulsory, security fw should change its
>    * policy to mark different content_types for different streams.
>    */
> -static void
> -intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +static int
> +intel_hdcp_required_content_stream(struct intel_atomic_state *state,
> +				   struct intel_hdcp *hdcp,

I dont think we are using this in the function, so lets remove this.



> +				   struct intel_digital_port *dig_port)
>   {
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	bool enforce_type0 = false;
>   	int k;
>   
>   	if (dig_port->hdcp_auth_status)
> -		return;
> +		return 0;
> +
> +	data->k = 0;
>   
>   	if (!dig_port->hdcp_mst_type1_capable)
>   		enforce_type0 = true;
>   
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (connector->base.status == connector_status_disconnected)
> +			continue;
> +
> +		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> +			continue;
> +
> +		conn_dig_port = intel_attached_dig_port(connector);
> +		if (conn_dig_port != dig_port)
> +			continue;
> +
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(state, connector);
> +		data->k++;
> +
> +		/* if there is only one active stream */
> +		if (dig_port->dp.active_mst_links <= 1)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> +		return -EINVAL;
> +
>   	/*
>   	 * Apply common protection level across all streams in DP MST Topology.
>   	 * Use highest supported content type for all streams in DP MST Topology.
> @@ -88,18 +121,24 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	for (k = 0; k < data->k; k++)
>   		data->streams[k].stream_type =
>   			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;
>   }
>   
> -static void intel_hdcp_prepare_streams(struct intel_connector *connector)
> +static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
> +				      struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   
>   	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> +		data->k = 1;
> +		data->streams[0].stream_id = 0;
>   		data->streams[0].stream_type = hdcp->content_type;
> +		return 0;
>   	} else {
> -		intel_hdcp_required_content_stream(dig_port);
> +		return intel_hdcp_required_content_stream(state, hdcp, dig_port);
>   	}

We can get rid of else block now, we can just return 
intel_hdcp_required_content_stream(state, dig_port);

I wonder if it would be better to check for mst encoder first:

  if (intel_encoder_is_mst(intel_attached_encoder(connector)))
	return intel_hdcp_required_content_stream(state, dig_port);

  data->k = 1;
  data->streams[0].stream_id = 0;
  data->streams[0].stream_type = hdcp->content_type;
  return 0;
Regards, Ankit

>   }
>   
> @@ -1901,7 +1940,8 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>   	return ret;
>   }
>   
> -static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
> +static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
> +					  struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> @@ -1910,7 +1950,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
>   		ret = hdcp2_authenticate_sink(connector);
>   		if (!ret) {
> -			intel_hdcp_prepare_streams(connector);
> +			ret = intel_hdcp_prepare_streams(state, connector);
> +			if (ret) {
> +				drm_dbg_kms(&i915->drm,
> +					    "Prepare stream failed.(%d)\n",
> +					    ret);
> +				break;
> +			}
>   
>   			ret = hdcp2_propagate_stream_management_info(connector);
>   			if (ret) {
> @@ -1955,7 +2001,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	return ret;
>   }
>   
> -static int _intel_hdcp2_enable(struct intel_connector *connector)
> +static int _intel_hdcp2_enable(struct intel_atomic_state *state,
> +			       struct intel_connector *connector)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> @@ -1965,7 +2012,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>   		    connector->base.base.id, connector->base.name,
>   		    hdcp->content_type);
>   
> -	ret = hdcp2_authenticate_and_encrypt(connector);
> +	ret = hdcp2_authenticate_and_encrypt(state, connector);
>   	if (ret) {
>   		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
>   			    hdcp->content_type, ret);
> @@ -2293,52 +2340,6 @@ int intel_hdcp_init(struct intel_connector *connector,
>   	return 0;
>   }
>   
> -static int
> -intel_hdcp_set_streams(struct intel_digital_port *dig_port,
> -		       struct intel_atomic_state *state)
> -{
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_digital_port *conn_dig_port;
> -	struct intel_connector *connector;
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> -
> -	if (!intel_encoder_is_mst(&dig_port->base)) {
> -		data->k = 1;
> -		data->streams[0].stream_id = 0;
> -		return 0;
> -	}
> -
> -	data->k = 0;
> -
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (connector->base.status == connector_status_disconnected)
> -			continue;
> -
> -		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> -			continue;
> -
> -		conn_dig_port = intel_attached_dig_port(connector);
> -		if (conn_dig_port != dig_port)
> -			continue;
> -
> -		data->streams[data->k].stream_id =
> -			intel_conn_to_vcpi(state, connector);
> -		data->k++;
> -
> -		/* if there is only one active stream */
> -		if (dig_port->dp.active_mst_links <= 1)
> -			break;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> -		return -EINVAL;
> -
> -	return 0;
> -}
> -
>   static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   			      struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *pipe_config,
> @@ -2384,17 +2385,10 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_get_capability(connector)) {
> -		ret = intel_hdcp_set_streams(dig_port, state);
> -		if (!ret) {
> -			ret = _intel_hdcp2_enable(connector);
> -			if (!ret)
> -				check_link_interval =
> -					DRM_HDCP2_CHECK_PERIOD_MS;
> -		} else {
> -			drm_dbg_kms(&i915->drm,
> -				    "Set content streams failed: (%d)\n",
> -				    ret);
> -		}
> +		ret = _intel_hdcp2_enable(state, connector);
> +		if (!ret)
> +			check_link_interval =
> +				DRM_HDCP2_CHECK_PERIOD_MS;
>   	}
>   
>   	/*
