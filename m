Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07539535D8F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 11:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FB210E72E;
	Fri, 27 May 2022 09:44:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE5F10E452;
 Fri, 27 May 2022 09:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653644698; x=1685180698;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2A2m3if+7O0kc+CulR81Z9d9/KL7gGoFQO4CwRUb7uQ=;
 b=FXT5TgvnmaOUM3kKhxUbJVkA5656/F2Zt2lvXDoTarA8yg/ioBKAQiPK
 uJt7Zm5igGcThufWKnVMivqdD2AyDjgeVQyOfwMgi9O7VwOlynorpltL2
 1nB2JEZXIYRCsNPXqgFsE0onxXKAukoV5ajJ7Y/bFrkHgqq6WMgblvVM7
 JW5Rmbyvl3Mx35aQTWJsGnQ3W3atTSu61Bio48ZD/UQ0TEmScN+U0mh65
 0wxC7CRmw0W7N7OqjiwU7nmL3j34rw9z6I9pDYUB9YdpP/hoDrg8aX9k+
 RcV3vuNTjInID1tbNbVDHMltVqfvO8D24iEsV82awoyE7G5CHJDo8wU2z Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="337481843"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="337481843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:44:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="574503378"
Received: from dnanduri-mobl.ger.corp.intel.com (HELO [10.213.215.174])
 ([10.213.215.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:44:56 -0700
Message-ID: <ed4d3024-78d7-558a-fe74-abef5dfa5e73@linux.intel.com>
Date: Fri, 27 May 2022 10:44:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Petri Latvala <petri.latvala@intel.com>
References: <20220527075304.2226456-1-tvrtko.ursulin@linux.intel.com>
 <YpCRMT+Q9/ujewRq@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YpCRMT+Q9/ujewRq@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Don't show client
 header if no kernel support
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/05/2022 09:52, Petri Latvala wrote:
> On Fri, May 27, 2022 at 08:53:04AM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> On kernels without support for the feature we should skip showing the
>> clients header to avoid confusing users.
>>
>> Simply briefly open a render node to the selected device during init and
>> look if the relevant fields are present in the fdinfo data.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Issue: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/120
>> ---
>>   tools/intel_gpu_top.c | 22 ++++++++++++++++++++--
>>   1 file changed, 20 insertions(+), 2 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 1984c10dca29..26986a822bb7 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -2389,6 +2389,23 @@ static void process_stdin(unsigned int timeout_us)
>>   		process_normal_stdin();
>>   }
>>   
>> +static bool has_drm_fdinfo(const struct igt_device_card *card)
>> +{
>> +	struct drm_client_fdinfo info;
>> +	unsigned int cnt;
>> +	int fd;
>> +
>> +	fd = open(card->render, O_RDWR);
>> +	if (fd < 0)
>> +		return false;
>> +
>> +	cnt = igt_parse_drm_fdinfo(fd, &info);
>> +
>> +	close(fd);
>> +
>> +	return cnt > 0;
>> +}
>> +
>>   static void show_help_screen(void)
>>   {
>>   	printf(
>> @@ -2545,8 +2562,9 @@ int main(int argc, char **argv)
>>   
>>   	ret = EXIT_SUCCESS;
>>   
>> -	clients = init_clients(card.pci_slot_name[0] ?
>> -			       card.pci_slot_name : IGPU_PCI);
>> +	if (has_drm_fdinfo(&card))
>> +		clients = init_clients(card.pci_slot_name[0] ?
>> +				       card.pci_slot_name : IGPU_PCI);
> 
> Checked all usage of 'clients' below this, and everything handles NULL
> properly.
> 
> That said, nothing seems to free() it, am I reading that correctly?

Process exit does ;) (or every loop iteration in pid aggregation mode) - 
but okay, it is inconsistent that I free some bits but not all.

> Anyway, that can be left for another patch, this change is
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Thanks!

Regards,

Tvrtko

> 
> 
>>   	init_engine_classes(engines);
>>   	if (clients) {
>>   		clients->num_classes = engines->num_classes;
>> -- 
>> 2.32.0
>>
