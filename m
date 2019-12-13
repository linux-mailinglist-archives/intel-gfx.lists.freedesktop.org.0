Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9545E11E2A8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 12:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E5A6E4F3;
	Fri, 13 Dec 2019 11:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E656E4F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 11:19:05 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBD9hwsR136015;
 Fri, 13 Dec 2019 09:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=KLopqxMi7M/B0qcpC/dJbgi+ckc8OHBzkcW24nCAyTc=;
 b=PSwgECE4e0vun8eiHAjnE0yUqS7TlppjEA229Yhxn48CThXiEPHqCVFgEQ0uI/DuEHVV
 LUWsQbIXW5FNBzbud9i8Ix+XfIQ9NiSULO30dEYI2S0om7M3AbFnupDCO3D/MSgrh5GH
 d79+j63S8LqTlTQg/C1xNGm+FMWGmsTJ+GMH0WfBObup9MPha2X7zHG8r+YUP8Jzml23
 J1PcLZXER0vbwJC5sXI4rNUN1PZRCD6BgN8OoEJhV/IHw1ak0mJwcZzwIUxG0ZoogsR7
 u5e4EzxnLCm47IpCpvObpB4lQe1+Lzem1JFCP4MJU3Bkm1ad6arRcCZl534D3ukbvB48 Aw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2wr4qs02dt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 09:49:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBD9mrNG115963;
 Fri, 13 Dec 2019 09:49:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2wumsbd07f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 09:49:55 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBD9nrBC027103;
 Fri, 13 Dec 2019 09:49:53 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 13 Dec 2019 01:49:52 -0800
Date: Fri, 13 Dec 2019 12:49:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <20191213094946.GA2407@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211055907.8398-1-abdiel.janulgue@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912130078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912130078
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add lmem fault handler
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Abdiel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20191210]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Abdiel-Janulgue/drm-i915-Add-lmem-fault-handler/20191212-031235
base:   git://anongit.freedesktop.org/drm-intel for-linux-next

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/gpu/drm/i915/gem/i915_gem_lmem.c:40 vm_fault_lmem() error: uninitialized symbol 'vmf_ret'.

# https://github.com/0day-ci/linux/commit/527bcb2414222221b5b3cea4909756095ae07d6a
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 527bcb2414222221b5b3cea4909756095ae07d6a
vim +/vmf_ret +40 drivers/gpu/drm/i915/gem/i915_gem_lmem.c

527bcb24142222 Abdiel Janulgue 2019-12-11  12  vm_fault_t vm_fault_lmem(struct vm_fault *vmf)
527bcb24142222 Abdiel Janulgue 2019-12-11  13  {
527bcb24142222 Abdiel Janulgue 2019-12-11  14  	struct vm_area_struct *area = vmf->vma;
527bcb24142222 Abdiel Janulgue 2019-12-11  15  	struct i915_mmap_offset *priv = area->vm_private_data;
527bcb24142222 Abdiel Janulgue 2019-12-11  16  	struct drm_i915_gem_object *obj = priv->obj;
527bcb24142222 Abdiel Janulgue 2019-12-11  17  	unsigned long size = area->vm_end - area->vm_start;
527bcb24142222 Abdiel Janulgue 2019-12-11  18  	bool write = area->vm_flags & VM_WRITE;
527bcb24142222 Abdiel Janulgue 2019-12-11  19  	vm_fault_t vmf_ret;
                                                ^^^^^^^^^^^^^^^^^^^

527bcb24142222 Abdiel Janulgue 2019-12-11  20  	int i, ret;
527bcb24142222 Abdiel Janulgue 2019-12-11  21  
527bcb24142222 Abdiel Janulgue 2019-12-11  22  	/* Sanity check that we allow writing into this object */
527bcb24142222 Abdiel Janulgue 2019-12-11  23  	if (i915_gem_object_is_readonly(obj) && write)
527bcb24142222 Abdiel Janulgue 2019-12-11  24  		return VM_FAULT_SIGBUS;
527bcb24142222 Abdiel Janulgue 2019-12-11  25  
527bcb24142222 Abdiel Janulgue 2019-12-11  26  	ret = i915_gem_object_pin_pages(obj);
527bcb24142222 Abdiel Janulgue 2019-12-11  27  	if (ret)
527bcb24142222 Abdiel Janulgue 2019-12-11  28  		return i915_error_to_vmf_fault(ret);
527bcb24142222 Abdiel Janulgue 2019-12-11  29  
527bcb24142222 Abdiel Janulgue 2019-12-11  30  	for (i = 0; i < size >> PAGE_SHIFT; i++) {

Can size be less than a page?

527bcb24142222 Abdiel Janulgue 2019-12-11  31  		vmf_ret = vmf_insert_pfn(area,
527bcb24142222 Abdiel Janulgue 2019-12-11  32  					 (unsigned long)area->vm_start + i * PAGE_SIZE,
527bcb24142222 Abdiel Janulgue 2019-12-11  33  					 i915_gem_object_lmem_io_pfn(obj, i));
527bcb24142222 Abdiel Janulgue 2019-12-11  34  		if (vmf_ret != VM_FAULT_NOPAGE)
527bcb24142222 Abdiel Janulgue 2019-12-11  35  			break;
527bcb24142222 Abdiel Janulgue 2019-12-11  36  	}
527bcb24142222 Abdiel Janulgue 2019-12-11  37  
527bcb24142222 Abdiel Janulgue 2019-12-11  38  	i915_gem_object_unpin_pages(obj);
527bcb24142222 Abdiel Janulgue 2019-12-11  39  
527bcb24142222 Abdiel Janulgue 2019-12-11 @40  	return vmf_ret;
527bcb24142222 Abdiel Janulgue 2019-12-11  41  }

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
