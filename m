Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA9A8466FC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 05:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC7F10E0C9;
	Fri,  2 Feb 2024 04:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GuHLzbkZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1115D10E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 04:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706848455; x=1738384455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nz0PvwafTLuOX1kLUVz93GjXei/jvOP5UhRxFy048hY=;
 b=GuHLzbkZeyidnjEWaue556enRx6s4mtXjAAAtKX5+CpERFFhl5MVfgY9
 fWxzjebJR2qhxr7r2abuNG5eWUzLLIlxcdYDIGIKI4/nPQhvEiN08RoYb
 kv0fhhhoPT32qrTUy7yktD3G2XNVg1AL7Ic932+Gb+Kx9zgYsysX0V2lU
 KiVC2mC+L/SYe08Wn6FeVNm75VPh8j461RtVOzLWmqvJboYcIX4euYVSm
 T4b+SJR2VrJXXTxP0ABqtlsuDTM5A+xDDOhQsFc5pLS0Jrm4Aieg0fho4
 1sj92IforTlL5xu1ORpk7YHTBUxv+xBSXVDcRoDc5ngXH4blyachAbKxv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="468294848"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="468294848"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 20:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="859317681"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="859317681"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 20:33:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:33:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 20:33:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 20:33:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 20:33:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXhamiLWp4PsXGqXxoOTHbBNuG3p+0if9Hn4a/jtvxHVMQm8crEyG/RVRRIVQduB4hJXg5Ipye8zoYJn7C/8HNhBNBPrho1Ttg1zh7ceG0ZqgtyumhFWW+/4CykMdZAmI0fTR7QEmoOuUcNKkT+S3UEf7X0bDDI6H9FDX4fXxAevLhl4X/z0R2Csd8+GQMHoz7oNOvJPe2PoRsrGykzphbqPTNwogHOsPl3h/ebRKheCUfaICoP6QfWP7bmPqNR6clGWB7BylLfoTUBwZJyIn2N5XvuUrPIM0fhaeCLrB3aScShLcXmqvqJrgHnDtzqrvrrKW2IuXunNZejZebEq0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bhc6r1e8dupYSQOs7xydsX7zmjw2VlebbGWV/o6xrO4=;
 b=Oh7BJUSeNhfZO9UkWG7zFlWkfdevJx0SokgLAuIkk5EpNF8a1ObylluvhLuI3CKHSqnbCvEtNvCjj0gk3a7kIk1v0ZC7dsi4XNk+KOniCrngNvwiQru9+6t/mJuVTZjAbWW5aY61Io35MjnkOXzgOUMSNswmyPpUmLzBrV3htVty2aa0kah36DWgr/0uKuwzj7NErOwsxsjHb6LgEZiUY/wTxeYZThLCkTTn7+gnBbUS6oW0e5hEaxoJC5wzLa35nSR/xsU2D3aFdrqLY7jDskQeLb6t4CA+IxkKatp6Lv8KBQ2tma6CpjRU1rgPhXWglwWa/GGT2V6gLh+PBk4XFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.26; Fri, 2 Feb
 2024 04:33:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 04:33:54 +0000
Message-ID: <d44c8621-dc8e-4109-afc1-8f6161f78501@intel.com>
Date: Fri, 2 Feb 2024 10:03:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXPR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5522:EE_
X-MS-Office365-Filtering-Correlation-Id: 59bc45a2-2c91-477e-cd9c-08dc23a829b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 01DuD0RzVSRlX4oj/iShq1DG2JS84YewfYlibLiDJLKJDJpDllZ1ayobEqs7iaNg6eggqQCffquisUsxCqobWiEW0GLMpZ0Mf2aDwIz2kC+qgQXxqWA0fY54haWMJzIwLHmbxZ3Wn1Gio76ARj+yXmBeGbvFp0Md2NKP1Byt9tNZUzURyZmCWIt7j4Hxt2FT3g6hXRCw6e1aFSyMyucn+j+ZRBVro5nglyo0agi2IsWQk4g2eVb57oKKDic3D9brAChY6i+dzI+ymA4UpbmZqKJE9imfrb2YzlKPugLgyUsm9Julrl7QX9fQWjh8hb7g9fIVsjVoxs9pVGr1BUsoQu6dWLCyWhlSE3IeeLtero2ZRSHePX9/B5dQ98oiiCa7Z53gIqN6EA4sE7QSWn4QBGUKBs2qWcfsg+fRJ0s8M4pP81gvdCdtaqmRunTXIEVvonmdRB5RfQbpy0bxP0I489LxxCziGw2l4ozN+/DMZPUWaTtGTFHxETELUDlpdPI+pzjHUliDsTrt5EI8RXHJm7tZpDI+2Ow8b/CYtMXzbNEz4iMiliXvDiulEda5JeKPLJdxMWwgQpHlRDVjnOct9JoqKrRDKtJCZGNSm5AkyBGEqapZ0m/wMYQu+dE/D2vsvEqRFIeam5G0H7kp2NN1iA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(107886003)(31686004)(41300700001)(26005)(36756003)(316002)(6512007)(478600001)(53546011)(6506007)(6666004)(83380400001)(66556008)(38100700002)(82960400001)(66476007)(6486002)(5660300002)(31696002)(2906002)(86362001)(4326008)(66946007)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1ptRWF4S0lkbmVmZEQzMXNVRGhDYVdDeEVyeXhnaWZZMVB2bmpsRS9wbmo5?=
 =?utf-8?B?bXRzRUtLK2Jrbm9KOUc5bk04N3VHcUxGZ2NaRWJnalhVaFlTc3ZPc0N5YzE3?=
 =?utf-8?B?TVhGR3p3MHRBY081QndoMnh3cnRLeTJvSWp6ZVlkU052VDR6OUdMSG5WK1Z6?=
 =?utf-8?B?dzZrR3J3dTZBaTZDRlBmWUx6dzkvaUJETU5iTzlKZGlZdEhxb1NXUEkzL1Vr?=
 =?utf-8?B?UXpLY2diTm1aL1pUQUdnZjA2cm5VWXpEWnFCOXNZQ1Z5VVZ6OXNkRHowaTJk?=
 =?utf-8?B?Ym94UDNBZ1RaY0REdG1jeXFoWkE4RGNlbHUvQ0R1bXVQdnN4ckhsRUw3VFBh?=
 =?utf-8?B?L01aUUR4dGdiVDNYT1BKUk5RR0g1SmQrM3I3eUtkTk1ZaTY1QmJ0cDNJeW8v?=
 =?utf-8?B?RWVnTXhKSzdWdGVMbmZkMFJXaVBJdU9WKzR4WjUveHFjR2YvVDhoMkJzT3dJ?=
 =?utf-8?B?bmk4bXFJUktkcFpiK2JEd21kcDduZU1nU2VGN0JuVTc2ZkVYZFdPTTBQMG9O?=
 =?utf-8?B?M0JKN3l4Qi9SZVU1WnNKSEhXeWdPRVNSamg4NFA1Zi94RjlzL0JYSC8yak9H?=
 =?utf-8?B?R1llTEtvemJtK1l1SEhYOWJzaDE1amlxQzZlSkxodVFic0NLSzB0eGx0cUpo?=
 =?utf-8?B?WTJNdmZ4cjJ1bTU4YzJ2L2o2cXlSUTY2TXNvRkJjdjFjWGRYYm5wd3VFS2JB?=
 =?utf-8?B?V01QRHVpVjBEaUFqODZqdWlHWmdzY2VjMlNLTnhKVWZPbHVjYk5CRVhVNzl6?=
 =?utf-8?B?UzVPd1RTZUhQS25CRGhJTXkrQVRyTk42ZDlmNmdwQW9iVTl3VW5ScWQ4QzBV?=
 =?utf-8?B?dTdLaVZPUEZROGQ3eVpOUFNKeWRTYS92emN5dXF1UmwvQWVrK0gyZ29qRTVG?=
 =?utf-8?B?UTBJeTNEckczdGN0M1ZDU0RYU2NJb3Ntb3RqMUV0TzdMZ3ZSNDBxc3B6MEV2?=
 =?utf-8?B?Vnl2QzErSk9MK3NXeXJ5ejVoWEpOY1pKRUFMOEh4WFU3aS8zQ0F3QTl2Vm5v?=
 =?utf-8?B?Y3lmdlVCRmpFNXd5eThtOEx1QjhsYXBrZHRPZ29tMlR2bnZUenRNNVVvYi9Q?=
 =?utf-8?B?TlF5VzRiSk5XOUJVUnFWT2dIdEpUeUhFM2JBdmRSdm5od1M0K2V6MUFZb0JB?=
 =?utf-8?B?WVgwVzVTVDZQbVNGelY5NnBYd1UrWGhlSVlHVVp4NXc3TFBQMlF0cE5UbnZ3?=
 =?utf-8?B?ajdnaHFDd1ZrU2pXSW5qK05kR0NxdndjUTkxaWJaMHhBSHd1Q0cwQS8zdDdT?=
 =?utf-8?B?NytWcUFrV3BCMmxUOWc2Z1BremZod0g1V2k4elJldDBCODYzMjF2RHlGamdB?=
 =?utf-8?B?ZG5ZamxaS2dYbG1xQTZjazExTUsxWDBQSFFEbUpjSUlKQ0ZKeTlyQUhPVXpG?=
 =?utf-8?B?bFY0UTFuNjN3WEJoZlBsNFNFZDNDeXJaRk94Mzk0a1FxYVhWQjhlakp3bjJv?=
 =?utf-8?B?REVwUit5eHNIZGlwVjI3WE50WE1MQTNGbFdxVE4vQ1YwS0hxbERZSk14Sk1L?=
 =?utf-8?B?K2VncE9oU1FVeFhlNC9hdUlxRjNld2E5SUR4WU1YUzNraUNqeWZydk1LSXV2?=
 =?utf-8?B?LzcrRWR3alVIUSs3N2dBT3RGZ3AvNUZBTTZFSkd3TTJBRVFiU3VWSXY0Y2F6?=
 =?utf-8?B?U2sxd0RYdHh4blRKcll2N2NicHQvK1p5UTFhS1JVMy9KNVlKTm15UmtKQXBo?=
 =?utf-8?B?MFhiWHZSUmlwMlJBQ3M1ektEbWZmbStlSW1kK1dXWHVrcDZjcTRJd0poeVJM?=
 =?utf-8?B?RW5KV01hTVFZdTRhRlFXbXhPVzlEVC9NRmVDQ2FWcjZYbmw2VlRFZVpOTFZh?=
 =?utf-8?B?SW1wSlhaV1ZoT3NUVUFzSlJ0VlNISFhwbkxLV0IyQ3JvakhQMmpLYVgwMzNP?=
 =?utf-8?B?MXpvb242NmVrZnd3YlhrbXVGc1ZFZUxVVEVaREJBazJ0ekFzYnJqay9rOEVO?=
 =?utf-8?B?SG0ySUQ4T2tVMngwM0Q2YnlmR294OU9BTWRrREhQeFVFbGVOZG9JS3dYTEZ0?=
 =?utf-8?B?QzRxTFZ4TmZtakRBUUZCSTFPUVVsd29qMld4ZUpCSktYK0FmellMWWxRVytG?=
 =?utf-8?B?VmdzbCtkNWoveVNKUlVFeGpWMDZ0S3ZENHNNaHlJNm44OFE1UkJ5WCszOUpU?=
 =?utf-8?B?OUUwNXUyVEpaUWtEZzV3QUplTjk2MjZ4TW5ZMkp2b21Nazg2bmNFbXRMZXVN?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59bc45a2-2c91-477e-cd9c-08dc23a829b0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 04:33:54.3758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n7ZUT9n0AGM8mGJAtHtMFEMxKUh/bnO0ilEXcmgPrJeP82qAbqw1B3ecBy63/fYkejdb4CW9dyxUE6UndSyV31LBi7xOynWlBMDwVaPl8z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5522
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

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 2/1/2024 1:09 AM, Suraj Kandpal wrote:
> Break intel_dp_hdcp2_capable so that the common the code can be
> reused for the remote capability check.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index defc90936317..9aeee6b49b3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -636,8 +636,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
>   }
>   
>   static
> -int intel_dp_hdcp2_capable(struct intel_connector *connector,
> -			   bool *capable)
> +int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
> +			    bool *capable)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_dp_aux *aux = &dig_port->dp.aux;
> @@ -658,6 +658,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	return 0;
>   }
>   
> +static
> +int intel_dp_hdcp2_capable(struct intel_connector *connector,
> +			   bool *capable)
> +{
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
> +
> +	return _intel_dp_hdcp2_capable(aux, capable);
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
