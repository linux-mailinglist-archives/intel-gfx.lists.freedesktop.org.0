Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 378E95AF62A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 22:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5701F10EAC1;
	Tue,  6 Sep 2022 20:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB5410EAC1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 20:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662496512; x=1694032512;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eU7CRjBYdzFwXgt0KcWYkHBJqHLDDCHhPDMuIl3OTUI=;
 b=kKUR7Dyb8N2T8C4Nig8+uegSewfWnnCLYMGYScWTg/FIDbw6Ra6i2c74
 5lCPp3Mo6p/TK+sCjANdLg/Ff/dwiRbidBMDVZIoxHQU2fMFCqAp7mY/6
 yk9s4nHf3IAF9+URHXAwPER6dt7AJrmAkI5TiQZhryYQ3wqa1Bjvb7YWx
 cE7uKJhKeNzkY7/2KmemHZQQReOERvnxSdxYqoEylMA6akAnxmkYBSaKI
 zO1zNrYbb1QBq3yZ0YroRYiygnyru4vIpwlYSGIHOwr2LYKx3jFO2J6+i
 9JCgwgkcWKAmUCAtJaVkjKYnyHK3JPZplklDsFLAOQ5JqNGrWjEAi7PkT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297484420"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297484420"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 13:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="591411605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 06 Sep 2022 13:35:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:35:11 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:35:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 13:35:10 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 13:35:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rm46cKJi9h5ufPKXQ8n09tod3g2yUWJM08kPBTR3keJzMwlI4oewyb5GAqiv5phjvliIVTt7ZSGgVwvcRSQXsSvbjub4IMWFANMUFFQxA0fZr7Ba+Bj5AfVgQm67cFfkyM0i4j85YiTuQMDkIMVMSov95wEWxCszjh5VaQL2xAUoV+gyRCwcJ/0Drbi4CBxN2B4pg0oWcYcjJ55TqG0PXOkbg0DG1BPUvK5zM49j9FVhLeWGwtmukIsYJs1Sy0XawVcSCf1ROfoGUBoehMW1Q+XlLPXbdvMX+xH+XYSsitwKOEw8Dy8v/c+yo8lGW6PXbdM+n2DD9WtVn2brJer4/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EwQ4KN39R07877EGAtfQPNiFCkTXqY23HE7NDzRKxFE=;
 b=XyZzDRs+SrqxrjmShSgLn9iVPyQYvpVC/Vf1SxspBKfmhPsalIiOAb53ELhByMS27hoqqihmjfFM59TioNqHDSCCleXQRugAvqAHYRqDSITfEvZj4I+9Rx6nwrUjWuDdUYQggAMSTHOFLnqPvnXJL7AAmgQrcPqnJxUyx1jx6PLrmK4hMR3Q2QqXT82cikiCH9UUUuK9NiGDOoj64OpkLE///0HSlLUs0ulyxzNmLY7j0uGrcFFMmH8BuWpaxmzAyIL6YCHSlWq5GJofg+YQ2To6fV/y1tkLBU5UqrrkpqUZb09GnNxPTo0S19GmIHnNzBR+5Mpiac3G0SUsCB3M2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB6550.namprd11.prod.outlook.com (2603:10b6:8:b4::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.18; Tue, 6 Sep 2022 20:35:08 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 20:35:08 +0000
Date: Tue, 6 Sep 2022 13:35:06 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <Yxeu+pUALbVBBL55@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-5-umesh.nerlige.ramappa@intel.com>
 <00a6e452-9df1-04a0-1b91-056bf0bb1265@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <00a6e452-9df1-04a0-1b91-056bf0bb1265@intel.com>
X-ClientProxiedBy: BY5PR20CA0029.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::42) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce58eafa-83c6-416e-5eab-08da904749be
X-MS-TrafficTypeDiagnostic: DM4PR11MB6550:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8XSknpbn6lpe0AjJwqiSx+PgQzPRFDLNwLPyaM9JEtAFP9DL9Afc1aWMfsFNaMAjlJP6rpXr2xNkHzq/D9Myd1w3A8l2APW7+RI0/B1chjNcFNPvO9R2Y06OFJrbGQCPz7CeKiTXyU9u2SPFzgYm0TlE+VhUpcmlfrxva1KwF0CdrmgNumvZZQetp76z0EdNRh+6IH6p5AcCAkod9sEKYOkQwDxmtFayJ3bYdOwHA4eP6Ne011A9x89xOl55o4gtPZpXED4sRDrEddTf1vG5q+DKAPPdXYBpIbSV8EHRWq2eFeT3f0M3aLPg/MgizMiim5sZjRVFKmlOxXD+Bfjm48jbRBbgb+lyVYbRZsUJJ0rp/i2kwwRTPeCgoweJHXhxTWrEBrK0qf7k5aiheC/rk0fpBGNgy0PiiZkYz+u28jUzzq7mt58SKUIv5n5/T5U+kI0FEscbkr0pi31jnDb03vP37G6/cBu3Sk9OUKzy32IpmMZQlHVLt8ZDOnmXCRfh6MkRN2nteUojeptQT4XsEwNSCkXxzF8Zh6SZnNSj+1zy499x/x42lNLdD6l4CJd8UbzGbYBL8JlzufPY3tsi47pGYE6yoilupIWKqwYou+736M1hAekEhawol/qQwcljW0axX5iF5BMrLMnHvqQMIZFhfHtQIUqVN1y4uI9MKuYutmUIytqtqiuOVwzLFc4ZOIyMZns/HrLvX7oQGF7gvDlYWCjJJcfEH7oS09vqErYQsrQrRT02ufkXhLCOQVx9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(376002)(346002)(366004)(396003)(136003)(39860400002)(8676002)(66556008)(66476007)(4326008)(82960400001)(66946007)(6486002)(38100700002)(186003)(41300700001)(6512007)(107886003)(6506007)(9686003)(83380400001)(6636002)(26005)(316002)(8936002)(86362001)(478600001)(5660300002)(2906002)(33716001)(6862004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azNoTnl5VlNYcTBqYSsvNVpJVmlEeDVIMm9WenR6RDE1cm5oUUVDaE5WL3ll?=
 =?utf-8?B?Z2d4NTZOTVV1WXNnbTBKWG1qL1J1YzhTeDlvbFFuNVExZjJKSCtiS0FocWcx?=
 =?utf-8?B?OHVibGZRTkFvVGU4RzRZbnhyRGRKaitNc3lWbGMyVEtyeXN4VGVORjg3UFZO?=
 =?utf-8?B?TmE0Q1VKaVQ3VTZIM3pqeU11VXNZT2xrRkp0RkczUVJtTXdIK0ZQSVZod3d6?=
 =?utf-8?B?bDl5QVRpUzNsSTliNGhyOWhoRDVabm8rWFRGSndmOUQvT0RDRTFqK2ZSL1E4?=
 =?utf-8?B?eXBLYUFIR3Z3SDlSalVkLzRTNFRHcmNJRU1MQyt3blVEY3ZMaGNJTUtjQ1dp?=
 =?utf-8?B?eE5BUTR0NzZ1OGs3TkVHd2MycElpUTNzNkRIMUx0eURYV1I5K0NORGFmNmVX?=
 =?utf-8?B?dUpQZEVXdkFoY0J3L0V6ODFyZHZ2dCtTMGk0c1NjRjZlQmc0SU9zTUhBZG9z?=
 =?utf-8?B?eTBPaTRuWmxjOFkzaXppMU1LeCtqVUhuK2cwRGNUZDIyR1RNOVc0cWxTelMy?=
 =?utf-8?B?cW8xd3psQXh3UWNKTzNjSlQ3aWdWNDFOM2FZbEdpWXp1LzdlTDhwRlJxQjNw?=
 =?utf-8?B?a1VDR1JnekltTFZoNDk4VzdRN0R3UXhEQmNtcWNISUduSms0OTFlajZoTW9X?=
 =?utf-8?B?RG1oSHI2dXZ2Umo5QjRoa1hGMDYxbkQrTndYeGNNNGRxYzN0R3lxZGxpdXZM?=
 =?utf-8?B?aWxOR0kweEhlYzlPSTVqdjY0UC9WOW1JZWkvNVBjKzVNTk9lWFhtVGozckZx?=
 =?utf-8?B?QXRzUlVTblVkZVR2TTcvMjF4MHY0a2t6QU0wN1IzRitQUys1SGtGL0NJQUZG?=
 =?utf-8?B?aklIcFdOb3NOMWphU1NlUGVlT1dobXp2NzJtUzQ1NVgrTEw4WHdtL2hYQUt6?=
 =?utf-8?B?bEJyQ2RvNlFRdEI0and5V3JvOWNkR1dEMEQrQjRDQTZ5ZmkwLzdUUGZuM2ZZ?=
 =?utf-8?B?cFJ2MVJmSWg1ZXRYL0grQjNUQnZ0Wmhrc2NtVmt4Q0QrdVZBaStuOW9QM0pl?=
 =?utf-8?B?RTNhWGNLVUFKTk9RbkJNNEJFOUFxS1pzTUZjUFRIdGlLdlJXbk0yblR3Tzdp?=
 =?utf-8?B?OVk2WWdESnJjNHFqeEtOWFI3SzNjSzV3VGNLSUg2bFp3R3RKWGNhOU1aeTM5?=
 =?utf-8?B?Q1FHd3RsWHBHMk92ekZMcEoxOWpZZ0E1QTVuQXpTYTlGbG1na3VUL3JIdENJ?=
 =?utf-8?B?LzFZMVVrTUhQVlVKZjV1bk91Umd5T28yTW5iRGR4V25Ga0ZKZjk1TVQrUk1v?=
 =?utf-8?B?VlFUakpKNmRjWWdiWFZZSTVkdDV2VHE5b05VeFAwSGNrTGdjRnNlVVlMTSto?=
 =?utf-8?B?cVBBZU4wMW03VzdmeU8zRDZXQmwxRDA5eTdjZUxNZ05NZzk1MmRGZ1pWeTNn?=
 =?utf-8?B?bThiejl6T21oZ08xU3A4RTJUaUtMTmtUd3R1U2pHZ2NjUFVDWTBSMkdtZVF5?=
 =?utf-8?B?M2JWZWd3ZWlSWXlSenZNRW5PVDNGV3dyeEp3cmxxa0N1SEJ4aGg2QTg5WHBj?=
 =?utf-8?B?aFRRNElvVklwTTI5emNqMmI3QXUxeEVxaFJHVDRBdDVqbGZRdW0xbURlQUxt?=
 =?utf-8?B?eGNVcEFTaFI5OU1Fb21uSTJydHR5NU00eFl4RXJ2NDllMUYvQlRzOEVudTE4?=
 =?utf-8?B?cFo0ZWJLdzdDSzQ3TnBvczFmdFVUdDJYZVBmckNxOVo4eXdkZkJVb2pVUkYr?=
 =?utf-8?B?TEdzUEk2MHpIbTZ3NWFWeExGM2YwT3ZUclJyZjNkZmFEUDN5dGVQd0dSQjhV?=
 =?utf-8?B?cGY2bitHSXpPL0NJbW9zK3A5Sk1lM0U3UG5WSEQxUDdlbkhKdzE4TFd1aDVh?=
 =?utf-8?B?UkpPU3IxRHA0TStlRytkQVFiUlQ2QVBZTGN5MTRrY2RucnhHdUtRUVVnRS9J?=
 =?utf-8?B?cDZuRnA2UmZLOU5yTndwUzdmcklOUUZJaGEyZVp2Z1dBcWdPT3I2Ulk2YmJP?=
 =?utf-8?B?TFhhdTVRSTRZOVBLc1FsZExyN2xoRmtSTll2ZSttV2MwOHV5WFdiaFNOejdT?=
 =?utf-8?B?R3ozaDdxMFZSL0xHUW02dDRjWlhqK01uSUZsNmQ3ZytUSHptZDB0WjMydXc1?=
 =?utf-8?B?Z0lCYmYweEFxL3ovb0N5OWw5K0hEazdSK3ZpbzRtblJ4czBBemV5ZnBkQnZT?=
 =?utf-8?B?a0ZRK1dWRFRxNUtyY3I4ZTF3dzR5OUtjbkdTdThXR2Yrb2RpMEdEd3dOWkp6?=
 =?utf-8?Q?lNMkIMQgoGDTbCe9ADbaxpU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce58eafa-83c6-416e-5eab-08da904749be
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 20:35:08.2043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4HBpf6xi80nx8eXU/jD4DAC7pg3cSnoBCUqcXArr14W4xqQYN8WpBMKct8Dgwj5eRsGB6KB+wh46YVWF5dUsPh3o/3LdiM61HnH4gXjfmOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6550
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915/perf: Determine gen12 oa ctx
 offset at runtime
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 10:48:50PM +0300, Lionel Landwerlin wrote:
>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>Some SKUs of same gen12 platform may have different oactxctrl
>>offsets. For gen12, determine oactxctrl offsets at runtime.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_perf.c         | 149 ++++++++++++++++++-----
>>  drivers/gpu/drm/i915/i915_perf_oa_regs.h |   2 +-
>>  2 files changed, 120 insertions(+), 31 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index 3526693d64fa..efa7eda83edd 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -1363,6 +1363,67 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>>  	return 0;
>>  }
>>+#define MI_OPCODE(x) (((x) >> 23) & 0x3f)
>>+#define IS_MI_LRI_CMD(x) (MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
>>+#define MI_LRI_LEN(x) (((x) & 0xff) + 1)
>
>
>Maybe you want to put this in intel_gpu_commands.h
>
>
>>+#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>>+static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset)
>>+{
>>+	u32 idx = *offset;
>>+	u32 len = MI_LRI_LEN(state[idx]) + idx;
>>+
>>+	idx++;
>>+	for (; idx < len; idx += 2)
>>+		if (state[idx] == reg)
>>+			break;
>>+
>>+	*offset = idx;
>>+	return state[idx] == reg;
>>+}
>>+
>>+static u32 __context_image_offset(struct intel_context *ce, u32 reg)
>>+{
>>+	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>>+	u32 *state = ce->lrc_reg_state;
>>+
>>+	for (offset = 0; offset < len; ) {
>>+		if (IS_MI_LRI_CMD(state[offset])) {
>
>I'm a bit concerned you might find other matches with this.
>
>Because let's say you run into a 3DSTATE_SUBSLICE_HASH_TABLE 
>instruction, you'll iterate the instruction dword by dword because you 
>don't know how to read its length and skip to the next one.
>
>Now some of the fields can be programmed from userspace to look like 
>an MI_LRI header, so you start to read data in the wrong way.
>
>
>Unfortunately I don't have a better solution. My only ask is that you 
>make __find_reg_in_lri() take the context image size in parameter so 
>it NEVER goes over the the context image.
>
>
>To limit the risk you should run this function only one at driver 
>initialization and store the found offset.
>

Hmm, didn't know that there may be non-LRI commands in the context image 
or user could add to the context image somehow. Does using the context 
image size alone address these issues?

Even after including the size in the logic, any reason you think we 
would be much more safer to do this from init? Is it because context 
image is not touched by user yet?

Thanks,
Umesh

>
>Thanks,
>
>
>-Lionel
>
>
>>+			if (__find_reg_in_lri(state, reg, &offset))
>>+				break;
>>+		} else {
>>+			offset++;
>>+		}
>>+	}
>>+
>>+	return offset < len ? offset : U32_MAX;
>>+}
>>+
>>+static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
>>+{
>>+	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>>+	struct i915_perf *perf = &ce->engine->i915->perf;
>>+	u32 saved_offset = perf->ctx_oactxctrl_offset;
>>+	u32 offset;
>>+
>>+	/* Do this only once. Failure is stored as offset of U32_MAX */
>>+	if (saved_offset)
>>+		return 0;
>>+
>>+	offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
>>+	perf->ctx_oactxctrl_offset = offset;
>>+
>>+	drm_dbg(&ce->engine->i915->drm,
>>+		"%s oa ctx control at 0x%08x dword offset\n",
>>+		ce->engine->name, offset);
>>+
>>+	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>>+}
>>+
>>+static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>>+{
>>+	return engine->class == RENDER_CLASS;
>>+}
>>+
>>  /**
>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>   * @stream: An i915-perf stream opened for OA metrics
>>@@ -1382,6 +1443,17 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>  	if (IS_ERR(ce))
>>  		return PTR_ERR(ce);
>>+	if (engine_supports_mi_query(stream->engine)) {
>>+		ret = __set_oa_ctx_ctrl_offset(ce);
>>+		if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
>>+			intel_context_unpin(ce);
>>+			drm_err(&stream->perf->i915->drm,
>>+				"Enabling perf query failed for %s\n",
>>+				stream->engine->name);
>>+			return ret;
>>+		}
>>+	}
>>+
>>  	switch (GRAPHICS_VER(ce->engine->i915)) {
>>  	case 7: {
>>  		/*
>>@@ -2412,10 +2484,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>  	int err;
>>  	struct intel_context *ce = stream->pinned_ctx;
>>  	u32 format = stream->oa_buffer.format;
>>+	u32 offset = stream->perf->ctx_oactxctrl_offset;
>>  	struct flex regs_context[] = {
>>  		{
>>  			GEN8_OACTXCONTROL,
>>-			stream->perf->ctx_oactxctrl_offset + 1,
>>+			offset + 1,
>>  			active ? GEN8_OA_COUNTER_RESUME : 0,
>>  		},
>>  	};
>>@@ -2440,15 +2513,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>  		},
>>  	};
>>-	/* Modify the context image of pinned context with regs_context*/
>>-	err = intel_context_lock_pinned(ce);
>>-	if (err)
>>-		return err;
>>+	/* Modify the context image of pinned context with regs_context */
>>+	if (__valid_oactxctrl_offset(offset)) {
>>+		err = intel_context_lock_pinned(ce);
>>+		if (err)
>>+			return err;
>>-	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
>>-	intel_context_unlock_pinned(ce);
>>-	if (err)
>>-		return err;
>>+		err = gen8_modify_context(ce, regs_context,
>>+					  ARRAY_SIZE(regs_context));
>>+		intel_context_unlock_pinned(ce);
>>+		if (err)
>>+			return err;
>>+	}
>>  	/* Apply regs_lri using LRI with pinned context */
>>  	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
>>@@ -2570,6 +2646,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>  			   const struct i915_oa_config *oa_config,
>>  			   struct i915_active *active)
>>  {
>>+	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>>  	/* The MMIO offsets for Flex EU registers aren't contiguous */
>>  	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>>  #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
>>@@ -2580,7 +2657,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>  		},
>>  		{
>>  			GEN8_OACTXCONTROL,
>>-			stream->perf->ctx_oactxctrl_offset + 1,
>>+			ctx_oactxctrl + 1,
>>  		},
>>  		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
>>  		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
>>@@ -4551,6 +4628,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>  	}
>>  }
>>+static void i915_perf_init_info(struct drm_i915_private *i915)
>>+{
>>+	struct i915_perf *perf = &i915->perf;
>>+
>>+	switch (GRAPHICS_VER(i915)) {
>>+	case 8:
>>+		perf->ctx_oactxctrl_offset = 0x120;
>>+		perf->ctx_flexeu0_offset = 0x2ce;
>>+		perf->gen8_valid_ctx_bit = BIT(25);
>>+		break;
>>+	case 9:
>>+		perf->ctx_oactxctrl_offset = 0x128;
>>+		perf->ctx_flexeu0_offset = 0x3de;
>>+		perf->gen8_valid_ctx_bit = BIT(16);
>>+		break;
>>+	case 11:
>>+		perf->ctx_oactxctrl_offset = 0x124;
>>+		perf->ctx_flexeu0_offset = 0x78e;
>>+		perf->gen8_valid_ctx_bit = BIT(16);
>>+		break;
>>+	case 12:
>>+		/*
>>+		 * Calculate offset at runtime in oa_pin_context for gen12 and
>>+		 * cache the value in perf->ctx_oactxctrl_offset.
>>+		 */
>>+		break;
>>+	default:
>>+		MISSING_CASE(GRAPHICS_VER(i915));
>>+	}
>>+}
>>+
>>  /**
>>   * i915_perf_init - initialize i915-perf state on module bind
>>   * @i915: i915 device instance
>>@@ -4589,6 +4697,7 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  		 * execlist mode by default.
>>  		 */
>>  		perf->ops.read = gen8_oa_read;
>>+		i915_perf_init_info(i915);
>>  		if (IS_GRAPHICS_VER(i915, 8, 9)) {
>>  			perf->ops.is_valid_b_counter_reg =
>>@@ -4608,18 +4717,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen8_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen8_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>-
>>-			if (GRAPHICS_VER(i915) == 8) {
>>-				perf->ctx_oactxctrl_offset = 0x120;
>>-				perf->ctx_flexeu0_offset = 0x2ce;
>>-
>>-				perf->gen8_valid_ctx_bit = BIT(25);
>>-			} else {
>>-				perf->ctx_oactxctrl_offset = 0x128;
>>-				perf->ctx_flexeu0_offset = 0x3de;
>>-
>>-				perf->gen8_valid_ctx_bit = BIT(16);
>>-			}
>>  		} else if (GRAPHICS_VER(i915) == 11) {
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen7_is_valid_b_counter_addr;
>>@@ -4633,11 +4730,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen8_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen11_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>>-
>>-			perf->ctx_oactxctrl_offset = 0x124;
>>-			perf->ctx_flexeu0_offset = 0x78e;
>>-
>>-			perf->gen8_valid_ctx_bit = BIT(16);
>>  		} else if (GRAPHICS_VER(i915) == 12) {
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen12_is_valid_b_counter_addr;
>>@@ -4651,9 +4743,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			perf->ops.enable_metric_set = gen12_enable_metric_set;
>>  			perf->ops.disable_metric_set = gen12_disable_metric_set;
>>  			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
>>-
>>-			perf->ctx_flexeu0_offset = 0;
>>-			perf->ctx_oactxctrl_offset = 0x144;
>>  		}
>>  	}
>>diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>index f31c9f13a9fc..0ef3562ff4aa 100644
>>--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>@@ -97,7 +97,7 @@
>>  #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
>>  #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
>>-#define GEN12_OACTXCONTROL _MMIO(0x2360)
>>+#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
>>  #define GEN12_OAR_OASTATUS _MMIO(0x2968)
>>  /* Gen12 OAG unit */
>
>
