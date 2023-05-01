Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3E86F3863
	for <lists+intel-gfx@lfdr.de>; Mon,  1 May 2023 21:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E0610E323;
	Mon,  1 May 2023 19:44:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3B510E321;
 Mon,  1 May 2023 19:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682970261; x=1714506261;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V6ZZ4GE3tae6kDQ2qRdsgdgqjfGmx7JCuj9Wi8UxP90=;
 b=geW6Ws7Ky31Y/HYG85IXNKTUEADh43V/WbsbUAn+XIOA6vDGXHL3/SL4
 bwEThp0iZJorxF1p28KvcNsl5aoaUYImuqrw5SQxQcCXMITcuE4b/4SCO
 WXngsZi17NN1g/kLpFX7MjDIAFJ17RFPI/XuQuuaFVcvMN7A0ARGeQIsj
 jiGJSwQHEJ8h8VDiDDjoocbQ78UrcYYRwS5qGnCjSC5WbwOnQbOkl6giG
 QTY9iUMn7x04NbgVaz6Rwd5a2Wg4u8Nl7cU6aWjGarjwflAMj0K2OpEC+
 2pCuVj6+0jwyJ6UZnPZtpCJCP9sq6fS1aL97tiHEIcu5zRImUipXbLLWW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="413658476"
X-IronPort-AV: E=Sophos;i="5.99,242,1677571200"; d="scan'208";a="413658476"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2023 12:44:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="728647324"
X-IronPort-AV: E=Sophos;i="5.99,242,1677571200"; d="scan'208";a="728647324"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2023 12:44:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 12:44:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 12:44:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 1 May 2023 12:44:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 1 May 2023 12:44:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8nfcWOxtQz/F1Dxdc/0pKCBX6YNE3ydBYKSwAYVmy6Hke9F0iInHhuZqSmC8kXodUmRBMy88g7QcaUBwvKLPGjq/riiQo2CLB7rypY3uKcDt3W72q0Ijw4QotVfqzAzH6wdve4TVy1mE5k8b2JtEXqKp5sFCNuQNL8AoTnbvy5SZGvn0TXwFgcqOoxi5JhzxtPfFT22UvTsz5ru9PLtsrtSKe2adngNv9ndvNGSDMPMdevDMrwRPX6NEwbviDhNSbseL69Ysuyr0mc8DedtRR329Kml7NgJY9qGfNLU8Ou9VeBFEdF1uYXFEp/yE7/CK25Vo8CPEVwiHNh61qMDdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WvXND9sWVhQmBUQ3cPaqMqr5FlUopGphUp+mDe0BC4Y=;
 b=Y3SC5X08EtHAWAxMD2mPnP8BBf5EBE0w2gVxzmyBac7qhl33QgZXXBy3Vyr5xmX+zZvwN2HhEirWyX13z9T5rfMTYOAQfhN7VvE+tta/TQAL8spL2xou+Bzb/rknyeCoJL00aP6ydvrT6pnKNiNVnC3DpYOO7W27r3E6opTUt5UZeC7bknl7hzAxHNYa8hkNghXtX2Tmi1bqX6ma4QzTEKn4o+18sCdnrf/HfXjt0CsiXt2b/BIR7IBrgBd+lVhnJp6LZi5iy0JwnqDA13c1opgYJEFxh9HJRY6ezOemQzDt/17kEFaJ9BNx9wUY9xrUyWSgS42eNRm3WEg9+So+zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA1PR11MB7111.namprd11.prod.outlook.com (2603:10b6:806:2b5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.26; Mon, 1 May
 2023 19:44:17 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::3f27:644b:a0bd:a9b]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::3f27:644b:a0bd:a9b%4]) with mapi id 15.20.6340.030; Mon, 1 May 2023
 19:44:17 +0000
Message-ID: <99a016bd-d3da-154c-4bca-46ff66bb1932@intel.com>
Date: Mon, 1 May 2023 12:44:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.1
Content-Language: en-GB
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230425201926.99086-1-John.C.Harrison@Intel.com>
 <20230425201926.99086-2-John.C.Harrison@Intel.com>
 <874jp29urv.wl-ashutosh.dixit@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <874jp29urv.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0103.namprd05.prod.outlook.com
 (2603:10b6:a03:334::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA1PR11MB7111:EE_
X-MS-Office365-Filtering-Correlation-Id: 1436e864-45ed-4d8c-8fc1-08db4a7c72f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D2SzQT5KhsU1gZ3uvNxx7fseXo0+HlDHDH5BJ4dhAzuR9DopHW7BZsRfaAssEbIRlyU542iARtLnE2kmS8PZL7593eiwCff6rTS0FlxWTEV3nwl02UCenyjsk4psA8EHxc0fPjbyRyMJIXtZYamBizBtOfIhhi8pqnZq/AcfKhEGMc7l0FreXsPc6hS1GUyjfi5ydI4zOWtq72XxoA2bfQEpuCcgXwk3fV3trs08LZyntr3cGlgxDYZ1qTVcWdsAVngnfGjYANz66czRqSlTR2WFwd2aMRlZP3/aAHD9NMOxIDn+ls6O+CCnhvYYPl6YHZyqUUQoiDkolfvhb/KZ59ZvEgjA6JZLdWOzkGAeL9zFOk0bU/5bnBYTTs2dq0FOmmjwsSRl87Vc0G1O0SNAHx02hGQtm9HpLkCN9lbjmaoA0vBBymEmpbv2mzBnvUxc01TcgbVIwWo5wR7i12E2VCH6M1nOPLV+HgEHRvdeGS88VDn/yHQBZpp8JW5wH/JMG7FWi6Gs8DzPxCaonRWg/OHosugueDZlmFQzfr5dnyGWuTTMpLt5NYC/P7jiMwv/QZePy/Ewpet7bnfBtGbfjJiSCQGxg2T9/vqLnv+Ruo6RrPODDpNNw2qaOrRZm29bOTN6k/MoLZ33bFA6ek7KXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(376002)(39860400002)(366004)(451199021)(6486002)(450100002)(8936002)(53546011)(316002)(6512007)(6506007)(26005)(186003)(41300700001)(37006003)(478600001)(66946007)(66476007)(66556008)(6636002)(6666004)(4326008)(2616005)(38100700002)(82960400001)(36756003)(2906002)(31696002)(86362001)(5660300002)(6862004)(8676002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VElaU0UyQ0xLT1NHWEFCL3EvRGQrMldnRW1wUVQxdUxhUWtOS3dkVCtqQUY2?=
 =?utf-8?B?a2ZkWHRoeExQdS9yQWkvZ2EzME1jK3REZ0FlcnJwRS9aS1cvMkVHZXBxYnJQ?=
 =?utf-8?B?dlVuZ1hPcVdaYUg2RGt3UTFMVW9UMTFibDR5YWJzV2dkQjJ0OU84c09HTDJM?=
 =?utf-8?B?am5LWEkyNk1nbDNTSjlvSzkvNzcyNFhnVkMvQ0ZSelNWdGpXRXpWVTZrMCtt?=
 =?utf-8?B?QjdIa2lEQ1NDbjJXNmdDaFZudWUrS0RpbkFyWHgvM2UwRW5LQmIza3U2STRD?=
 =?utf-8?B?cDNMUHI0ZkkrNXU5MWw0VkRjaFdRTVFSek45bjRJbWo3MlgvTDl5UENIWVVn?=
 =?utf-8?B?WTFWTnRCYkxubXpZQitsNUtZL29FZFdYYjBJNCswQlFGWngrVXYzd24wU21Z?=
 =?utf-8?B?dUhiSTRreVQ3WEMwRVJsQWc1dm9xTXhkTDlOc0FzS1VGWU1jSnBOc2l5c2xU?=
 =?utf-8?B?TlhzeVUzdzNrQXJERkhtKzExMENBR3dydVlxa2EvZExvdTc3Mm56S2RRVVpu?=
 =?utf-8?B?dUVMT25UM1NtQkx4a2dYOTM5TG1kMGtVUmdtZFpTdDgva0pobURmYUZTWGJG?=
 =?utf-8?B?VlA1QVlaYjBLVVNjU0txeGNzVk5BN1M3RWhMYk0rRXp2YjdhVzVhdWgva21G?=
 =?utf-8?B?UVdoc2ZxTGRtQ2h5TDN6dmdYZmRXbU4zTkU5cHNxWXJMNGFjTXVsd0RPUTN6?=
 =?utf-8?B?cW82MU85QmZNN2ZjcnBHV2wzTjcrVW05NXBXelh3RFpacEg3aEJLS2loNTdE?=
 =?utf-8?B?ejluejZuYzBxS29vSEYyZ2RINmlSemdWZXVuZkpaWU15MUpRMzF3ZENYNVd6?=
 =?utf-8?B?RGwwK25GN1k3cWZMdk02NG56Ry8zelRWMnl3dzIybXQ4bldhN2QvOWhKaGpN?=
 =?utf-8?B?OVF5cTRmYWNaVDJ1MnJXa1M5OFlBUS9vSDNxSEp0UXRhY0dPdko0ZGRMbXh5?=
 =?utf-8?B?RVZuOEV2cFd2QlZLdFJHUDZHNGhJUGc3d2RENndVTzlvVkVUNnZmRFlhYldm?=
 =?utf-8?B?dk9uOWdaVlMrSTZ2dm5FY1ExQVBIT1BzMFpxKzhqVzE2T2RNRzhvQzA4MHB0?=
 =?utf-8?B?VWIvRnprQ296ZlFSc2w3cmI1NXdtSndxSzI5SEtSTGwrQ2FoY1Z4YTU2ai9U?=
 =?utf-8?B?RDJjT0F3U29SN0ozbSttQlJ2NFhSMjRDTlQ0RWx2NDIzOHVmekUzem4vMW12?=
 =?utf-8?B?VmhqbFpGOUlzSHRXWGhBYmJmRXVYR281dzBST243QmVlSEdDdXNiT1ZwMDVE?=
 =?utf-8?B?TzNMcXlPV3JKK3NkbW5HdWEraU5rR21DNWNIVU1rak54NzlsMWZMVlBNdkVG?=
 =?utf-8?B?M1FSZlFpNkZiNk9sd1pmNTlzcTdPNXhZbjEreGNwSVlpTWEzRUZYdy92ZGh3?=
 =?utf-8?B?YTlZTC8rVHBqVUFtR0lHdExFcElZRDQwZ2d1cVRoRTJaOWh2d3Z6Nnl6b281?=
 =?utf-8?B?RnpZbE5nR2l0blNvUGx5Ylg2NlZVQkdFd01LYkNtaWh3MEZZQW96WVh3VUdE?=
 =?utf-8?B?QURVdWNJUThPUWU2KzdVaFkxWmRUbUh6MlY2SHVSK0d1byt2RGxOd0wxMHU4?=
 =?utf-8?B?SDg1cHc1RHNjenRjbVBoMXRKSWxFbnI3bVNyN2FqcW5IOWpoYU8zK05McnJY?=
 =?utf-8?B?Z0VyeEhTMDFsYmVnalBWNGRPcTdGcTJRYnQvcUJBd2hyYzdmUHQwMEZGT0Fa?=
 =?utf-8?B?MHJ5dzlQL0g3blJoZHd1Z3MxdStTWFVJc21jQlFGZnkrMVhONjQ2aUhubU5x?=
 =?utf-8?B?ZytGRzZkZUNaNVdtSFdnZWdNeGhlNkVBWHVuMHdGRzdHNy9ObDhQenNSbVJ5?=
 =?utf-8?B?S1lLZjk5dWo4dVlxbFA1ZVBab2JWUEx4OUVGQzJrRkxSOVZYaDZ0SWl5L000?=
 =?utf-8?B?SVBxZG9JTmtmSjRvdUtDZVhYdWJXdGlRR21NdENlT3lMSngySWNZQ0I2OG1o?=
 =?utf-8?B?Nm4zTDVSRzZqWk1NQk8rYzA2UkxUd0F6NHpMazhRTzBrY3UwdHVRUUU4MXpo?=
 =?utf-8?B?a3RES2NOUzlBOGxaM0pRZ25sYWtLTGZOODdlVldqQmhtcFQrMVoybmRuU3JV?=
 =?utf-8?B?Z0FEcDZYcjlrMFJ2MHNuTWgwWG1FSWs0NzRlaUNGYVhqcHhZZTJRQitaV04w?=
 =?utf-8?B?cUR4RWFLRitpV1YvaXJMakZsRCtMZ3dCVnRtbHcraVcxUm54MCtjamNQUnFS?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1436e864-45ed-4d8c-8fc1-08db4a7c72f3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2023 19:44:16.9951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MpsifLYx/2gJ73T1GmKLK4jFsaN0GhUfYXj+MLzfC+f9lMlP5xGcwkQPzY0kfXgyyxvyoejoUgEZ431vb5Vlu82ZqidEkzmajbdRKmNHHfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] lib/intel_decode: Decode Gen12
 ring/batch instructions correctly
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/26/2023 14:51, Dixit, Ashutosh wrote:
> On Tue, 25 Apr 2023 13:19:25 -0700, John.C.Harrison@Intel.com wrote:
>> @@ -3623,7 +3624,17 @@ decode_3d_965(struct intel_decode *ctx)
>> 		return len;
>>
>> 	case 0x7a00:
>> -		if (IS_GEN6(devid) || IS_GEN7(devid)) {
>> +		if (IS_GEN12(devid)) {
>> +			if (len != 6)
>> +				fprintf(out, "Bad count in PIPE_CONTROL\n");
>> +			instr_out(ctx, 0, "PIPE_CONTROL\n");
>> +			instr_out(ctx, 1, "flags\n");
>> +			instr_out(ctx, 2, "write address low\n");
>> +			instr_out(ctx, 3, "write address high\n");
>> +			instr_out(ctx, 4, "write data low\n");
>> +			instr_out(ctx, 5, "write data high\n");
>> +			return len;
> Is there a reference for this? I can review but have no idea what's going
> on here. The rest of the patch looks good. Thanks.
Just the bspec definition of PIPE_CONTROL. On later gens it has more 
data - 64bit rather than 32bit addressing I think.

John.

>
>> +		} else if (IS_GEN6(devid) || IS_GEN7(devid)) {
>> 			if (len != 4 && len != 5)
>> 				fprintf(out, "Bad count in PIPE_CONTROL\n");
>>
>> --
>> 2.39.1
>>

