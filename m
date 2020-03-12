Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A79E182EC4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C9C6E147;
	Thu, 12 Mar 2020 11:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7274F6E151
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:15:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="289685694"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.53.213])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2020 04:15:51 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 13:15:42 +0200
Message-Id: <20200312111542.2418545-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
References: <20200312111542.2418545-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 3/3] lib/i915/perf: update TGL configs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some HW woes are forcing us to store EU activity counters in a
different way.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 lib/i915/perf-configs/guids.xml  |   41 +-
 lib/i915/perf-configs/oa-tgl.xml | 3577 ++++++++++++++++++++++--------
 2 files changed, 2718 insertions(+), 900 deletions(-)

diff --git a/lib/i915/perf-configs/guids.xml b/lib/i915/perf-configs/guids.xml
index d382d302..1e45cd1e 100644
--- a/lib/i915/perf-configs/guids.xml
+++ b/lib/i915/perf-configs/guids.xml
@@ -279,23 +279,30 @@
     <guid config_hash="d2188fa3c865ef430532b127a3fd87a5" mdapi_config_hash="ff33e47c767f6f81d9a779153aae6fdb" id="fd25ec19-3ed1-40c9-8648-1d2387449a92" chipset="icl" name="TDL_3" />
     <guid config_hash="b421b29d8557dbbf0fe3068c82b3d8dd" mdapi_config_hash="cc850ab4463c23e6017f069d67785c31" id="40dc79f2-88c8-47c6-8f86-f509e39fbe5d" chipset="icl" name="GpuBusyness" />
     <guid config_hash="7480125fc0806a347f975dc714568e92" mdapi_config_hash="c6b1c7a22e3c2f456cbfdae1bfe394ac" id="3c0bf614-5d67-4326-887f-a24eb8a58244" chipset="icl" name="TestOa" />
-    <guid config_hash="cf5cc66e29088080b9de32aca9c20fdf" mdapi_config_hash="4d959fed7563ce4c6f34e9d9c1c504a6" id="daf004fb-fc9f-45e0-b842-1770e6d273c2" chipset="tgl" name="RenderBasic" />
-    <guid config_hash="7fbc387f30cec97fff537e0609e7b622" mdapi_config_hash="4b584fd8c71948d5bec22a415f6ef3a0" id="6ad92fc0-ed62-460c-b774-5353534c67ed" chipset="tgl" name="ComputeBasic" />
-    <guid config_hash="87de7aad82eabfb9e8ca28470298c833" mdapi_config_hash="b340b1eac0b354f04e9767f14a42a6e6" id="77ae98cf-9a9e-4e35-be85-597b09ffbe53" chipset="tgl" name="RenderPipeProfile" />
-    <guid config_hash="4bd795338e2cf42726894fedccdd223f" mdapi_config_hash="d6c3023d3da8fda32655bfa1fad4e514" id="dedd95cd-1bd4-4e65-be7f-1fd7aa43fe12" chipset="tgl" name="HDCAndSF" />
-    <guid config_hash="36994d80bab156fab0dbe815184a7303" mdapi_config_hash="739afc9fff139a9b9c8a2d72297abb78" id="a889ccb3-5ebd-437f-b5c6-e951fba822f5" chipset="tgl" name="RasterizerAndPixelBackend" />
-    <guid config_hash="54690c67418eb1b8fb23d9c6b47f07d2" mdapi_config_hash="745b6634b3b72399f738761f4565e924" id="feee2629-03a8-4d31-ab4d-7d16572163fb" chipset="tgl" name="L3_1" />
-    <guid config_hash="13cfb577c221a881210d1f31600a2207" mdapi_config_hash="4b527bab2ce2a95aeeb7764f1d4abf23" id="5266f235-1711-4eef-9493-ebdf0238d512" chipset="tgl" name="L3_2" />
-    <guid config_hash="6402b8deefae23be4db362c3fd853b89" mdapi_config_hash="b21101ed0007ddb167044b476654bd8f" id="9c2cd379-bf93-4ded-b481-f64efd534c4a" chipset="tgl" name="L3_3" />
-    <guid config_hash="9f9021d53f1970e1c9f7e4ea1a8ba24d" mdapi_config_hash="71f1cc0729c56e695307c981f0f410a6" id="6a68185d-0056-4891-a5f6-29aa1e1d81ae" chipset="tgl" name="L3_4" />
-    <guid config_hash="b23742dad95e7fc75edd65fa4dc367b7" mdapi_config_hash="7198d15717542985e3ba8308fa95b3a2" id="3f17a326-ae8b-4869-9f5a-3bccf793e287" chipset="tgl" name="L3_5" />
-    <guid config_hash="6c0871403663ab1617a98afa14b01e42" mdapi_config_hash="0383f07caf50fd4f6818a2138f418409" id="d312c40a-9fb7-489a-9a1a-9cd80aac6d61" chipset="tgl" name="L3_6" />
-    <guid config_hash="b1c971413433261918b4de26d99a4388" mdapi_config_hash="b6833e7b89fc08aa05b8e5c8d200071d" id="f0f255a4-535c-43ed-9d6b-85958cef6c1c" chipset="tgl" name="Sampler_1" />
-    <guid config_hash="8f5e405d5ece3fbd0586a1ca279db170" mdapi_config_hash="44f2a86d917ab0a44332d027036d9c32" id="f47c6b97-fc10-4962-bb67-d623e9d6219b" chipset="tgl" name="Sampler_2" />
-    <guid config_hash="185968c3897d41bcf4b84a5bf23187bb" mdapi_config_hash="64c55773613e6a431df5436de5ff8e8c" id="2e49d25e-93e8-4e2b-b91b-51731f5fb315" chipset="tgl" name="TDL_1" />
-    <guid config_hash="8f99569076014439129d68470313013b" mdapi_config_hash="0ff455e43a1ef70d60afc871bd7a1293" id="2a42ff25-99b1-4048-a121-f0664ed42c90" chipset="tgl" name="TDL_2" />
-    <guid config_hash="d1c4956992d95bf782ae915e306a5343" mdapi_config_hash="3ca22a297940fee9b8d8d78106a93003" id="b763fa13-834e-4468-bba6-5f0d40db9813" chipset="tgl" name="TDL_3" />
-    <guid config_hash="e9992e7e1c679eec0ac61356a3905731" mdapi_config_hash="9328c3e2f515349dd60c6468bad254c7" id="cc935a3e-8d96-4b47-bc46-3d84247e9a3a" chipset="tgl" name="GpuBusyness" />
+    <guid config_hash="e11b3ae4d24126848630dfe3ca5d5c9d" mdapi_config_hash="f79fdac73b7b9e7a4b29cc552d53541e" id="daf004fb-fc9f-45e0-b842-1770e6d273c2" chipset="tgl" name="RenderBasic" />
+    <guid config_hash="705e12535d531f9ff559167831832c15" mdapi_config_hash="0b225543e4d2809d21e5a41b91a34b10" id="6ad92fc0-ed62-460c-b774-5353534c67ed" chipset="tgl" name="ComputeBasic" />
+    <guid config_hash="25155ad45887742faf4286e5d637ee76" mdapi_config_hash="907735bc616cd88d18cc07b791f310b1" id="77ae98cf-9a9e-4e35-be85-597b09ffbe53" chipset="tgl" name="RenderPipeProfile" />
+    <guid config_hash="2f5fdc0a222330844b4838c01ff2f0d7" mdapi_config_hash="5e59bd24cd51d97e8bdf10d0105b571a" id="dedd95cd-1bd4-4e65-be7f-1fd7aa43fe12" chipset="tgl" name="HDCAndSF" />
+    <guid config_hash="68ae806b961b5fe10bc4538f3437c1aa" mdapi_config_hash="3c336f4983f38baedb49ee0ba6463a05" id="a889ccb3-5ebd-437f-b5c6-e951fba822f5" chipset="tgl" name="RasterizerAndPixelBackend" />
+    <guid config_hash="9c950c6ca07f1eccfdcfd49dad046c79" mdapi_config_hash="037ce99af3124b147e626c732fed685c" id="feee2629-03a8-4d31-ab4d-7d16572163fb" chipset="tgl" name="L3_1" />
+    <guid config_hash="289db172e2380a6b75aa18135a178fa5" mdapi_config_hash="d96d8a44d3d1cf20e43a8d4a0d455944" id="5266f235-1711-4eef-9493-ebdf0238d512" chipset="tgl" name="L3_2" />
+    <guid config_hash="e8f56ddd87c511ec0550e6607f061cba" mdapi_config_hash="ef430240598e5d1b52be27df97b2cb05" id="9c2cd379-bf93-4ded-b481-f64efd534c4a" chipset="tgl" name="L3_3" />
+    <guid config_hash="f39841acc09f409b1d970cfcdf561fab" mdapi_config_hash="04e1f19526af2ceda229588104702531" id="6a68185d-0056-4891-a5f6-29aa1e1d81ae" chipset="tgl" name="L3_4" />
+    <guid config_hash="63601012e6bccf1956384ab60dce30bb" mdapi_config_hash="de2796143442a5bf31f1da384b2537f7" id="3f17a326-ae8b-4869-9f5a-3bccf793e287" chipset="tgl" name="L3_5" />
+    <guid config_hash="2c297ada6f33ef20eeca56c8d4beeade" mdapi_config_hash="9a5506a742413b90fd2f3f76ed0c8de0" id="d312c40a-9fb7-489a-9a1a-9cd80aac6d61" chipset="tgl" name="L3_6" />
+    <guid config_hash="4a5906954e6d2fb44057c6cd1d7548f2" mdapi_config_hash="d4ce0c915b228a3ba5803cb3ec5bf87f" id="f0f255a4-535c-43ed-9d6b-85958cef6c1c" chipset="tgl" name="Sampler_1" />
+    <guid config_hash="21cca53ef0ba57fdeccd60634bb2647b" mdapi_config_hash="0301fc7eaddaba1e6ed73c66a66cb53f" id="f47c6b97-fc10-4962-bb67-d623e9d6219b" chipset="tgl" name="Sampler_2" />
+    <guid config_hash="48011bc9d54f96fa65d6913fbf1cee7f" mdapi_config_hash="49abf97f3d60ef68f41f88ff3137b09c" id="2e49d25e-93e8-4e2b-b91b-51731f5fb315" chipset="tgl" name="TDL_1" />
+    <guid config_hash="270908dc68b94e7f052cdc9b2b283167" mdapi_config_hash="e8f763b7b1f93e2c4614c9cb6e5efea8" id="2a42ff25-99b1-4048-a121-f0664ed42c90" chipset="tgl" name="TDL_2" />
+    <guid config_hash="c3cfaa9f10fc1109831e511184915858" mdapi_config_hash="1bd054308052f97adffa7c6207f3f653" id="b763fa13-834e-4468-bba6-5f0d40db9813" chipset="tgl" name="TDL_3" />
+    <guid config_hash="152652e6549d438757c692a4fcf35247" mdapi_config_hash="3a1737f21051c9ad2da32d250dd6c4d2" id="cc935a3e-8d96-4b47-bc46-3d84247e9a3a" chipset="tgl" name="GpuBusyness" />
+    <guid config_hash="836d21da6c81399e7f4bf0ca5cc2adc0" mdapi_config_hash="cb12bd77d6d6cace3172867b543e828b" id="0732e7e2-e09a-401c-92bc-8af9bf6000bb" chipset="tgl" name="EuActivity1" />
+    <guid config_hash="ff656dc8ef36a80023ff170f50cba220" mdapi_config_hash="fd6ba067ae79689bad93a1581db5dc72" id="52b1fa12-3068-4b8c-8139-b5031a8d569b" chipset="tgl" name="EuActivity2" />
+    <guid config_hash="a0548951f70bbfc2d608fced4af8703d" mdapi_config_hash="c80f4de1346995f6883330fe36e7ee4c" id="6381bfd9-e89a-4d23-a71c-176f70e39088" chipset="tgl" name="EuActivity3" />
+    <guid config_hash="4fb45fce661994bb712d58bf21dcf617" mdapi_config_hash="b206a58e00605b2100f454e8746c141d" id="efb7e460-edff-4329-9123-bbccc93f5546" chipset="tgl" name="EuActivity4" />
+    <guid config_hash="80a8e01afb1d0480f6560a3d55578240" mdapi_config_hash="bb7bd9a4082249a7503ebf1b6d56dc73" id="76566878-face-4c3e-b18e-9117e1662ed4" chipset="tgl" name="EuActivity5" />
+    <guid config_hash="b466c8edcc118944f73725dd3a1d0997" mdapi_config_hash="3522f98e3d010205276910c21d66f719" id="61ead329-10c0-48ad-8087-99cc9886197f" chipset="tgl" name="EuActivity6" />
+    <guid config_hash="d1d8327895c6292ea720571bf6aec48d" mdapi_config_hash="13b16625e9e7842ec07dfe7f607be03e" id="f6992ed0-8c99-4613-8371-08560c271eb9" chipset="tgl" name="EuActivity7" />
     <guid config_hash="185673d9c229adff444a595e6c217439" mdapi_config_hash="51644bc87975e69064d0575227a663f9" id="30801299-fe7b-40ba-8a6c-64c6196f3748" chipset="tgl" name="TestOa" />
     <guid config_hash="25380f09a9ab454374c78f1b5d1c4ddf" mdapi_config_hash="4d28665f4702ddf38239e5c47384dc15" id="a95112cc-804a-4c80-b57b-2870e56cc240" chipset="ehl" name="RenderBasic" />
     <guid config_hash="bf521fa74e9f5285bc3e9a7215cdadd2" mdapi_config_hash="bf085a519814344b241b08064f256921" id="54449e8a-196b-4c43-8ecd-540b0504b5c1" chipset="ehl" name="ComputeBasic" />
diff --git a/lib/i915/perf-configs/oa-tgl.xml b/lib/i915/perf-configs/oa-tgl.xml
index 3f8ae3d1..4e4f453b 100644
--- a/lib/i915/perf-configs/oa-tgl.xml
+++ b/lib/i915/perf-configs/oa-tgl.xml
@@ -1,5 +1,5 @@
 <?xml version="1.0"?>
-<metrics version="1582124706" merge_md5="">
+<metrics version="1584009330" merge_md5="">
   <set name="Render Metrics Basic Gen12"
        chipset="TGL"
        symbol_name="RenderBasic"
@@ -147,7 +147,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -161,124 +161,26 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
              data_type="float"
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="VS FPU Pipe Active"
-             symbol_name="VsFpuActive"
-             underscore_name="vs_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 10 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="VS EM Pipe Active"
-             symbol_name="VsEmActive"
-             underscore_name="vs_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 11 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="VS Send Pipe Active"
-             symbol_name="VsSendActive"
-             underscore_name="vs_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 12 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS FPU Pipe Active"
-             symbol_name="PsFpuActive"
-             underscore_name="ps_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 15 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS EM Pipe Active"
-             symbol_name="PsEmActive"
-             underscore_name="ps_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 16 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS Send Pipeline Active"
-             symbol_name="PsSendActive"
-             underscore_name="ps_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 17 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="FS Both FPU Active"
-             symbol_name="PsEuBothFpuActive"
-             underscore_name="ps_eu_both_fpu_active"
-             description="The percentage of time in which fragment shaders were processed actively on the both FPUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 18 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="3D Pipe/Fragment Shader"
-             mdapi_usage_flags="Tier4 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="Samplers Busy"
              symbol_name="SamplersBusy"
              underscore_name="samplers_busy"
@@ -598,11 +500,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00010003" />
-        <register type="FLEX" address="0x0000E658" value="0x00012011" />
-        <register type="FLEX" address="0x0000E45C" value="0x00051050" />
-        <register type="FLEX" address="0x0000E55C" value="0x00053052" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
         <register type="FLEX" address="0x0000E65C" value="0xFFFFFFFF" />
     </register_config>
   </set>
@@ -746,34 +649,6 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU AVG IPC Rate"
              symbol_name="EuAvgIpcRate"
              underscore_name="eu_avg_ipc_rate"
@@ -782,7 +657,7 @@
              max_equation="2"
              units="number"
              semantic_type="ratio"
-             equation="A 9 READ A 10 READ A 11 READ FADD A 9 READ FSUB FDIV 1 FADD"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FADD A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD FSUB FDIV 1 FADD"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier4 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -796,7 +671,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array/Pipes"
              mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -810,7 +685,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 10 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array/Pipes"
              mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -824,40 +699,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 11 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Send Pipe Active"
-             symbol_name="EuSendActive"
-             underscore_name="eu_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 12 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array/Pipes"
              mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 13 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="Rasterized Pixels"
              symbol_name="RasterizedPixels"
              underscore_name="rasterized_pixels"
@@ -1125,10 +972,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00000003" />
-        <register type="FLEX" address="0x0000E658" value="0x00002001" />
-        <register type="FLEX" address="0x0000E758" value="0x00000008" />
+        <register type="FLEX" address="0x0000E458" value="0x00803703" />
+        <register type="FLEX" address="0x0000E558" value="0x00A03903" />
+        <register type="FLEX" address="0x0000E658" value="0x00800700" />
+        <register type="FLEX" address="0x0000E758" value="0x00A00900" />
+        <register type="FLEX" address="0x0000E45C" value="0x00801701" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A01901" />
         <register type="FLEX" address="0x0000E65C" value="0xFFFFFFFF" />
     </register_config>
   </set>
@@ -1280,7 +1129,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -1294,7 +1143,21 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -1882,7 +1745,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -2033,7 +1901,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -2047,173 +1915,75 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
              data_type="float"
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="VS FPU Pipe Active"
-             symbol_name="VsFpuActive"
-             underscore_name="vs_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 10 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+    <counter name="Rasterized Pixels"
+             symbol_name="RasterizedPixels"
+             underscore_name="rasterized_pixels"
+             description="The total number of rasterized pixels."
+             data_type="uint64"
+             units="pixels"
+             semantic_type="event"
+             equation="A 21 READ 4 UMUL"
+             mdapi_group="3D Pipe/Rasterizer"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="VS EM Pipe Active"
-             symbol_name="VsEmActive"
-             underscore_name="vs_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 11 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+    <counter name="Early Hi-Depth Test Fails"
+             symbol_name="HiDepthTestFails"
+             underscore_name="hi_depth_test_fails"
+             description="The total number of pixels dropped on early hierarchical depth test."
+             data_type="uint64"
+             units="pixels"
+             semantic_type="event"
+             equation="A 22 READ 4 UMUL"
+             mdapi_group="3D Pipe/Rasterizer/Hi-Depth Test"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="VS Send Pipe Active"
-             symbol_name="VsSendActive"
-             underscore_name="vs_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 12 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+    <counter name="Early Depth Test Fails"
+             symbol_name="EarlyDepthTestFails"
+             underscore_name="early_depth_test_fails"
+             description="The total number of pixels dropped on early depth test."
+             data_type="uint64"
+             units="pixels"
+             semantic_type="event"
+             equation="A 23 READ 4 UMUL"
+             mdapi_group="3D Pipe/Rasterizer/Early Depth Test"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="PS FPU Pipe Active"
-             symbol_name="PsFpuActive"
-             underscore_name="ps_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 15 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS EM Pipe Active"
-             symbol_name="PsEmActive"
-             underscore_name="ps_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 16 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS Send Pipeline Active"
-             symbol_name="PsSendActive"
-             underscore_name="ps_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 17 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="FS Both FPU Active"
-             symbol_name="PsEuBothFpuActive"
-             underscore_name="ps_eu_both_fpu_active"
-             description="The percentage of time in which fragment shaders were processed actively on the both FPUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 18 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="3D Pipe/Fragment Shader"
-             mdapi_usage_flags="Tier4 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="Rasterized Pixels"
-             symbol_name="RasterizedPixels"
-             underscore_name="rasterized_pixels"
-             description="The total number of rasterized pixels."
-             data_type="uint64"
-             units="pixels"
-             semantic_type="event"
-             equation="A 21 READ 4 UMUL"
-             mdapi_group="3D Pipe/Rasterizer"
-             mdapi_usage_flags="Tier3 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="Early Hi-Depth Test Fails"
-             symbol_name="HiDepthTestFails"
-             underscore_name="hi_depth_test_fails"
-             description="The total number of pixels dropped on early hierarchical depth test."
-             data_type="uint64"
-             units="pixels"
-             semantic_type="event"
-             equation="A 22 READ 4 UMUL"
-             mdapi_group="3D Pipe/Rasterizer/Hi-Depth Test"
-             mdapi_usage_flags="Tier3 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="Early Depth Test Fails"
-             symbol_name="EarlyDepthTestFails"
-             underscore_name="early_depth_test_fails"
-             description="The total number of pixels dropped on early depth test."
-             data_type="uint64"
-             units="pixels"
-             semantic_type="event"
-             equation="A 23 READ 4 UMUL"
-             mdapi_group="3D Pipe/Rasterizer/Early Depth Test"
-             mdapi_usage_flags="Tier3 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="Samples Killed in FS"
-             symbol_name="SamplesKilledInPs"
-             underscore_name="samples_killed_in_ps"
-             description="The total number of samples or pixels dropped in fragment shaders."
-             data_type="uint64"
-             units="pixels"
-             semantic_type="event"
-             equation="A 24 READ 4 UMUL"
-             mdapi_group="3D Pipe/Fragment Shader"
-             mdapi_usage_flags="Tier4 Overview Frame Batch Draw"
+    <counter name="Samples Killed in FS"
+             symbol_name="SamplesKilledInPs"
+             underscore_name="samples_killed_in_ps"
+             description="The total number of samples or pixels dropped in fragment shaders."
+             data_type="uint64"
+             units="pixels"
+             semantic_type="event"
+             equation="A 24 READ 4 UMUL"
+             mdapi_group="3D Pipe/Fragment Shader"
+             mdapi_usage_flags="Tier4 Overview Frame Batch Draw"
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
@@ -2588,11 +2358,12 @@
         <register type="OA" address="0x0000DC34" value="0x0000FFBF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00010003" />
-        <register type="FLEX" address="0x0000E658" value="0x00012011" />
-        <register type="FLEX" address="0x0000E45C" value="0x00051050" />
-        <register type="FLEX" address="0x0000E55C" value="0x00053052" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -2743,7 +2514,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -2757,124 +2528,26 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
              data_type="float"
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="VS FPU Pipe Active"
-             symbol_name="VsFpuActive"
-             underscore_name="vs_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 10 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="VS EM Pipe Active"
-             symbol_name="VsEmActive"
-             underscore_name="vs_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 11 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="VS Send Pipe Active"
-             symbol_name="VsSendActive"
-             underscore_name="vs_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a vertex shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 12 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS FPU Pipe Active"
-             symbol_name="PsFpuActive"
-             underscore_name="ps_fpu_active"
-             description="The percentage of time in which EU FPU pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 15 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS EM Pipe Active"
-             symbol_name="PsEmActive"
-             underscore_name="ps_em_active"
-             description="The percentage of time in which EU EM pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 16 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="PS Send Pipeline Active"
-             symbol_name="PsSendActive"
-             underscore_name="ps_send_active"
-             description="The percentage of time in which EU send pipeline was actively processing a pixel shader instruction."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 17 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pixel Shader"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="FS Both FPU Active"
-             symbol_name="PsEuBothFpuActive"
-             underscore_name="ps_eu_both_fpu_active"
-             description="The percentage of time in which fragment shaders were processed actively on the both FPUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 18 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="3D Pipe/Fragment Shader"
-             mdapi_usage_flags="Tier4 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="Rasterized Pixels"
              symbol_name="RasterizedPixels"
              underscore_name="rasterized_pixels"
@@ -3376,11 +3049,12 @@
         <register type="OA" address="0x0000DC0C" value="0x0000FFE7" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00010003" />
-        <register type="FLEX" address="0x0000E658" value="0x00012011" />
-        <register type="FLEX" address="0x0000E45C" value="0x00051050" />
-        <register type="FLEX" address="0x0000E55C" value="0x00053052" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -3453,7 +3127,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -3467,26 +3141,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -3495,7 +3155,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -3735,8 +3395,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -3801,48 +3465,6 @@
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="VS Threads Dispatched"
              symbol_name="VsThreads"
              underscore_name="vs_threads"
@@ -3856,20 +3478,6 @@
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="HS Threads Dispatched"
              symbol_name="HsThreads"
              underscore_name="hs_threads"
@@ -3935,10 +3543,52 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="Slice0 L3 Bank2 Input Available"
-             symbol_name="L30Bank2InputAvailable"
-             underscore_name="l30_bank2_input_available"
-             description="The percentage of time in which slice0 L3 bank2 has input available"
+    <counter name="EU Active"
+             symbol_name="EuActive"
+             underscore_name="eu_active"
+             description="The percentage of time in which the Execution Units were actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Stall"
+             symbol_name="EuStall"
+             underscore_name="eu_stall"
+             description="The percentage of time in which the Execution Units were stalled."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Slice0 L3 Bank2 Input Available"
+             symbol_name="L30Bank2InputAvailable"
+             underscore_name="l30_bank2_input_available"
+             description="The percentage of time in which slice0 L3 bank2 has input available"
              data_type="float"
              max_equation="100"
              units="percent"
@@ -4092,8 +3742,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -4158,48 +3812,6 @@
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="VS Threads Dispatched"
              symbol_name="VsThreads"
              underscore_name="vs_threads"
@@ -4213,20 +3825,6 @@
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="HS Threads Dispatched"
              symbol_name="HsThreads"
              underscore_name="hs_threads"
@@ -4292,6 +3890,48 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
+    <counter name="EU Active"
+             symbol_name="EuActive"
+             underscore_name="eu_active"
+             description="The percentage of time in which the Execution Units were actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Stall"
+             symbol_name="EuStall"
+             underscore_name="eu_stall"
+             description="The percentage of time in which the Execution Units were stalled."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
     <counter name="Slice0 L3 Bank0 Output Ready"
              symbol_name="L30Bank0OutputReady"
              underscore_name="l30_bank0_output_ready"
@@ -4369,8 +4009,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -4435,48 +4079,6 @@
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="VS Threads Dispatched"
              symbol_name="VsThreads"
              underscore_name="vs_threads"
@@ -4490,20 +4092,6 @@
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="HS Threads Dispatched"
              symbol_name="HsThreads"
              underscore_name="hs_threads"
@@ -4569,6 +4157,48 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
+    <counter name="EU Active"
+             symbol_name="EuActive"
+             underscore_name="eu_active"
+             description="The percentage of time in which the Execution Units were actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Stall"
+             symbol_name="EuStall"
+             underscore_name="eu_stall"
+             description="The percentage of time in which the Execution Units were stalled."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
     <counter name="Slice0 L3 Bank1 Output Ready"
              symbol_name="L30Bank1OutputReady"
              underscore_name="l30_bank1_output_ready"
@@ -4646,8 +4276,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -4712,73 +4346,17 @@
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="VS Threads Dispatched"
-             symbol_name="VsThreads"
-             underscore_name="vs_threads"
-             description="The total number of vertex shader hardware threads dispatched."
-             data_type="uint64"
-             units="threads"
-             semantic_type="event"
-             equation="A 1 READ"
-             mdapi_group="EU Array/Vertex Shader"
-             mdapi_usage_flags="Tier3 Frame Batch Draw"
-             mdapi_supported_apis="VK OGL IO"
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
     <counter name="HS Threads Dispatched"
@@ -4846,6 +4424,48 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
+    <counter name="EU Active"
+             symbol_name="EuActive"
+             underscore_name="eu_active"
+             description="The percentage of time in which the Execution Units were actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Stall"
+             symbol_name="EuStall"
+             underscore_name="eu_stall"
+             description="The percentage of time in which the Execution Units were stalled."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
     <counter name="Slice0 L3 Bank2 Output Ready"
              symbol_name="L30Bank2OutputReady"
              underscore_name="l30_bank2_output_ready"
@@ -4923,8 +4543,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -4989,48 +4613,6 @@
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Active"
-             symbol_name="EuActive"
-             underscore_name="eu_active"
-             description="The percentage of time in which the Execution Units were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU Stall"
-             symbol_name="EuStall"
-             underscore_name="eu_stall"
-             description="The percentage of time in which the Execution Units were stalled."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="VS Threads Dispatched"
              symbol_name="VsThreads"
              underscore_name="vs_threads"
@@ -5044,20 +4626,6 @@
              mdapi_supported_apis="VK OGL IO"
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU Thread Occupancy"
-             symbol_name="EuThreadOccupancy"
-             underscore_name="eu_thread_occupancy"
-             description="The percentage of time in which hardware threads occupied EUs."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array"
-             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="HS Threads Dispatched"
              symbol_name="HsThreads"
              underscore_name="hs_threads"
@@ -5123,6 +4691,48 @@
              mdapi_supported_apis="VK OGL OCL IO MEDIA"
              mdapi_hw_unit_type="gpu"
              />
+    <counter name="EU Active"
+             symbol_name="EuActive"
+             underscore_name="eu_active"
+             description="The percentage of time in which the Execution Units were actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Stall"
+             symbol_name="EuStall"
+             underscore_name="eu_stall"
+             description="The percentage of time in which the Execution Units were stalled."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Thread Occupancy"
+             symbol_name="EuThreadOccupancy"
+             underscore_name="eu_thread_occupancy"
+             description="The percentage of time in which hardware threads occupied EUs."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
     <counter name="Slice0 L3 Bank3 Output Ready"
              symbol_name="L30Bank3OutputReady"
              underscore_name="l30_bank3_output_ready"
@@ -5200,8 +4810,12 @@
         <register type="OA" address="0x0000DC40" value="0x00000000" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -5352,7 +4966,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -5366,26 +4980,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -5394,7 +4994,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -5649,8 +5249,12 @@
         <register type="OA" address="0x0000DC2C" value="0x0000F3FF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -5801,7 +5405,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -5815,26 +5419,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -5843,7 +5433,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -6100,8 +5690,12 @@
         <register type="OA" address="0x0000DC2C" value="0x0000F3FF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -6252,7 +5846,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -6266,26 +5860,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -6294,7 +5874,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -6709,8 +6289,12 @@
         <register type="OA" address="0x0000DC3C" value="0x00000FFF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -6861,7 +6445,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -6875,26 +6459,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -6903,7 +6473,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -7254,8 +6824,12 @@
         <register type="OA" address="0x0000DC34" value="0x00000FFF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -7406,7 +6980,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -7420,26 +6994,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -7448,7 +7008,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -7818,8 +7378,12 @@
         <register type="OA" address="0x0000DC14" value="0x0000FF0F" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
     </register_config>
   </set>
 
@@ -7892,7 +7456,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 7 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -7906,26 +7470,12 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="A 8 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
              mdapi_hw_unit_type="gpu"
              />
-    <counter name="EU FPU And EM Pipes Active"
-             symbol_name="EuFpuEmActive"
-             underscore_name="eu_fpu_em_active"
-             description="The percentage of time in which EU FPU and EM pipelines were actively processing."
-             data_type="float"
-             max_equation="100"
-             units="percent"
-             semantic_type="duration"
-             equation="A 9 READ $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
-             mdapi_group="EU Array/Pipes"
-             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
-             mdapi_supported_apis=""
-             mdapi_hw_unit_type="gpu"
-             />
     <counter name="EU Thread Occupancy"
              symbol_name="EuThreadOccupancy"
              underscore_name="eu_thread_occupancy"
@@ -7934,7 +7484,7 @@
              max_equation="100"
              units="percent"
              semantic_type="duration"
-             equation="8 A 10 READ FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             equation="8 A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD FMUL $EuThreadsCount FDIV $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
              mdapi_group="EU Array"
              mdapi_usage_flags="Tier2 Overview System Frame Batch Draw"
              mdapi_supported_apis=""
@@ -8230,8 +7780,2269 @@
         <register type="OA" address="0x0000DC0C" value="0x000001FF" />
     </register_config>
     <register_config type="FLEX">
-        <register type="FLEX" address="0x0000E458" value="0x00005004" />
-        <register type="FLEX" address="0x0000E558" value="0x00008003" />
+        <register type="FLEX" address="0x0000E458" value="0x00804704" />
+        <register type="FLEX" address="0x0000E558" value="0x00A04904" />
+        <register type="FLEX" address="0x0000E658" value="0x00805705" />
+        <register type="FLEX" address="0x0000E758" value="0x00A05905" />
+        <register type="FLEX" address="0x0000E45C" value="0x00808708" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A08908" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity1"
+       chipset="TGL"
+       symbol_name="EuActivity1"
+       underscore_name="eu_activity1"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="0732e7e2-e09a-401c-92bc-8af9bf6000bb"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS FPU Pipe Active"
+             symbol_name="VsFpuActive"
+             underscore_name="vs_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a vertex shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="PS FPU Pipe Active"
+             symbol_name="PsFpuActive"
+             underscore_name="ps_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a pixel shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Pixel Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="EU Send Pipe Active"
+             symbol_name="EuSendActive"
+             underscore_name="eu_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Pipes"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00810710" />
+        <register type="FLEX" address="0x0000E558" value="0x00A10910" />
+        <register type="FLEX" address="0x0000E658" value="0x00850750" />
+        <register type="FLEX" address="0x0000E758" value="0x00A50950" />
+        <register type="FLEX" address="0x0000E45C" value="0x00802702" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A02902" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity2"
+       chipset="TGL"
+       symbol_name="EuActivity2"
+       underscore_name="eu_activity2"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="52b1fa12-3068-4b8c-8139-b5031a8d569b"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS EM Pipe Active"
+             symbol_name="CsEmActive"
+             underscore_name="cs_em_active"
+             description="The percentage of time in which EU FPU1 pipeline was actively processing a compute shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS FPU Pipe Active"
+             symbol_name="CsFpuActive"
+             underscore_name="cs_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a compute shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Send Pipeline Active"
+             symbol_name="CsSendActive"
+             underscore_name="cs_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a compute shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00862762" />
+        <register type="FLEX" address="0x0000E558" value="0x00A62962" />
+        <register type="FLEX" address="0x0000E658" value="0x00860760" />
+        <register type="FLEX" address="0x0000E758" value="0x00A60960" />
+        <register type="FLEX" address="0x0000E45C" value="0x00861761" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A61961" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity3"
+       chipset="TGL"
+       symbol_name="EuActivity3"
+       underscore_name="eu_activity3"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="6381bfd9-e89a-4d23-a71c-176f70e39088"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS EM Pipe Active"
+             symbol_name="VsEmActive"
+             underscore_name="vs_em_active"
+             description="The percentage of time in which EU EM pipeline was actively processing a vertex shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="PS EM Pipe Active"
+             symbol_name="PsEmActive"
+             underscore_name="ps_em_active"
+             description="The percentage of time in which EU EM pipeline was actively processing a pixel shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Pixel Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="PS Send Pipeline Active"
+             symbol_name="PsSendActive"
+             underscore_name="ps_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a pixel shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Pixel Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00811711" />
+        <register type="FLEX" address="0x0000E558" value="0x00A11911" />
+        <register type="FLEX" address="0x0000E658" value="0x00851751" />
+        <register type="FLEX" address="0x0000E758" value="0x00A51951" />
+        <register type="FLEX" address="0x0000E45C" value="0x00852752" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A52952" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity4"
+       chipset="TGL"
+       symbol_name="EuActivity4"
+       underscore_name="eu_activity4"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="efb7e460-edff-4329-9123-bbccc93f5546"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS FPU Pipe Active"
+             symbol_name="HsFpuActive"
+             underscore_name="hs_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a hull shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS FPU Pipe Active"
+             symbol_name="DsFpuActive"
+             underscore_name="ds_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a domain shader instructions."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Send Pipe Active"
+             symbol_name="VsSendActive"
+             underscore_name="vs_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a vertex shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00820720" />
+        <register type="FLEX" address="0x0000E558" value="0x00A20920" />
+        <register type="FLEX" address="0x0000E658" value="0x00830730" />
+        <register type="FLEX" address="0x0000E758" value="0x00A30930" />
+        <register type="FLEX" address="0x0000E45C" value="0x00812712" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A12912" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity5"
+       chipset="TGL"
+       symbol_name="EuActivity5"
+       underscore_name="eu_activity5"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="76566878-face-4c3e-b18e-9117e1662ed4"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS EM Pipe Active"
+             symbol_name="HsEmActive"
+             underscore_name="hs_em_active"
+             description="The percentage of time in which EU EM pipeline was actively processing a hull shader instructions."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS EM Pipe Active"
+             symbol_name="DsEmActive"
+             underscore_name="ds_em_active"
+             description="The percentage of time in which EU EM pipeline was actively processing a domain shader instructions."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Send Pipe Active"
+             symbol_name="HsSendActive"
+             underscore_name="hs_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a hull shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00821721" />
+        <register type="FLEX" address="0x0000E558" value="0x00A21921" />
+        <register type="FLEX" address="0x0000E658" value="0x00831731" />
+        <register type="FLEX" address="0x0000E758" value="0x00A31931" />
+        <register type="FLEX" address="0x0000E45C" value="0x00822722" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A22922" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity6"
+       chipset="TGL"
+       symbol_name="EuActivity6"
+       underscore_name="eu_activity6"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="61ead329-10c0-48ad-8087-99cc9886197f"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS FPU Pipe Active"
+             symbol_name="GsFpuActive"
+             underscore_name="gs_fpu_active"
+             description="The percentage of time in which EU FPU pipeline was actively processing a geometry shader instructions."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS EM Pipe Active"
+             symbol_name="GsEmActive"
+             underscore_name="gs_em_active"
+             description="The percentage of time in which EU EM pipeline was actively processing a geometry shader instructions."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 11 READ A 12 READ FADD A 13 READ FADD A 14 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Send Pipe Active"
+             symbol_name="GsSendActive"
+             underscore_name="gs_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a geometry shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 15 READ A 16 READ FADD A 17 READ FADD A 18 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00840740" />
+        <register type="FLEX" address="0x0000E558" value="0x00A40940" />
+        <register type="FLEX" address="0x0000E658" value="0x00841741" />
+        <register type="FLEX" address="0x0000E758" value="0x00A41941" />
+        <register type="FLEX" address="0x0000E45C" value="0x00842742" />
+        <register type="FLEX" address="0x0000E55C" value="0x00A42942" />
+    </register_config>
+  </set>
+
+  <set name="EuActivity7"
+       chipset="TGL"
+       symbol_name="EuActivity7"
+       underscore_name="eu_activity7"
+       mdapi_supported_apis="OGL OGL4 OCL MEDIA IO"
+       hw_config_guid="f6992ed0-8c99-4613-8371-08560c271eb9"
+       >
+    <counter name="GPU Time Elapsed"
+             symbol_name="GpuTime"
+             underscore_name="gpu_time"
+             description="Time elapsed on the GPU during the measurement."
+             data_type="uint64"
+             units="ns"
+             semantic_type="duration"
+             equation="GPU_TIME 0 READ 1000000000 UMUL $GpuTimestampFrequency UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Core Clocks"
+             symbol_name="GpuCoreClocks"
+             underscore_name="gpu_core_clocks"
+             description="The total number of GPU core clocks elapsed during the measurement."
+             data_type="uint64"
+             units="cycles"
+             semantic_type="event"
+             equation="GPU_CLOCK 0 READ"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="AVG GPU Core Frequency"
+             symbol_name="AvgGpuCoreFrequency"
+             underscore_name="avg_gpu_core_frequency"
+             description="Average GPU Core Frequency in the measurement."
+             data_type="uint64"
+             max_equation="$GpuMaxFrequency"
+             units="hz"
+             semantic_type="event"
+             equation="$GpuCoreClocks 1000000000 UMUL $GpuTime UDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GPU Busy"
+             symbol_name="GpuBusy"
+             underscore_name="gpu_busy"
+             description="The percentage of time in which the GPU has been processing GPU commands."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Tier1 Overview System Frame"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="VS Threads Dispatched"
+             symbol_name="VsThreads"
+             underscore_name="vs_threads"
+             description="The total number of vertex shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 1 READ"
+             mdapi_group="EU Array/Vertex Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="HS Threads Dispatched"
+             symbol_name="HsThreads"
+             underscore_name="hs_threads"
+             description="The total number of hull shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 2 READ"
+             mdapi_group="EU Array/Hull Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Threads Dispatched"
+             symbol_name="DsThreads"
+             underscore_name="ds_threads"
+             description="The total number of domain shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 3 READ"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GS Threads Dispatched"
+             symbol_name="GsThreads"
+             underscore_name="gs_threads"
+             description="The total number of geometry shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 5 READ"
+             mdapi_group="EU Array/Geometry Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="FS Threads Dispatched"
+             symbol_name="PsThreads"
+             underscore_name="ps_threads"
+             description="The total number of fragment shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 6 READ"
+             mdapi_group="EU Array/Fragment Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="CS Threads Dispatched"
+             symbol_name="CsThreads"
+             underscore_name="cs_threads"
+             description="The total number of compute shader hardware threads dispatched."
+             data_type="uint64"
+             units="threads"
+             semantic_type="event"
+             equation="A 4 READ"
+             mdapi_group="EU Array/Compute Shader"
+             mdapi_usage_flags="Tier3 Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render Ring Busy"
+             symbol_name="RenderBusy"
+             underscore_name="render_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 1 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Compute Ring Busy"
+             symbol_name="ComputeBusy"
+             underscore_name="compute_busy"
+             description="The percentage of time when render command streamer was busy."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="C 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="System Frame Batch"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="Render and compute engines are simultaneously busy"
+             symbol_name="RenderAndComputeBusy"
+             underscore_name="render_and_compute_busy"
+             description="The percentage of time when render and compute engines are simultaneously busy"
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="B 0 READ 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="GPU"
+             mdapi_usage_flags="Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Read Throughput"
+             symbol_name="GtiReadThroughput"
+             underscore_name="gti_read_throughput"
+             description="The total number of GPU memory bytes read from GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 7 READ C 6 READ UADD C 5 READ UADD C 4 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="GTI Write Throughput"
+             symbol_name="GtiWriteThroughput"
+             underscore_name="gti_write_throughput"
+             description="The total number of GPU memory bytes written to GTI."
+             data_type="uint64"
+             max_equation="$GpuCoreClocks 64 UMUL"
+             units="bytes"
+             semantic_type="throughput"
+             equation="64  C 3 READ C 2 READ UADD UMUL"
+             mdapi_group="GTI"
+             mdapi_usage_flags="Tier1 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <counter name="DS Send Pipe Active"
+             symbol_name="DsSendActive"
+             underscore_name="ds_send_active"
+             description="The percentage of time in which EU send pipeline was actively processing a domain shader instruction."
+             data_type="float"
+             max_equation="100"
+             units="percent"
+             semantic_type="duration"
+             equation="A 7 READ A 8 READ FADD A 9 READ FADD A 10 READ FADD $EuCoresTotalCount UDIV 100 UMUL $GpuCoreClocks FDIV"
+             mdapi_group="EU Array/Domain Shader"
+             mdapi_usage_flags="Tier3 Overview System Frame Batch Draw"
+             mdapi_supported_apis=""
+             mdapi_hw_unit_type="gpu"
+             />
+    <register_config type="NOA">
+        <register type="NOA" address="0x00000D04" value="0x00000200" />
+        <register type="NOA" address="0x00009840" value="0x00000000" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x0E0E1200" />
+        <register type="NOA" address="0x00009888" value="0x220E0009" />
+        <register type="NOA" address="0x00009888" value="0x1C0E0043" />
+        <register type="NOA" address="0x00009888" value="0x1E0E00B3" />
+        <register type="NOA" address="0x00009888" value="0x180E0000" />
+        <register type="NOA" address="0x00009888" value="0x160E0000" />
+        <register type="NOA" address="0x00009888" value="0x1E0F1400" />
+        <register type="NOA" address="0x00009888" value="0x1C104000" />
+        <register type="NOA" address="0x00009888" value="0x1E104000" />
+        <register type="NOA" address="0x00009888" value="0x2E020140" />
+        <register type="NOA" address="0x00009888" value="0x2C030005" />
+        <register type="NOA" address="0x00009888" value="0x38003600" />
+        <register type="NOA" address="0x00009888" value="0x1C0A8000" />
+        <register type="NOA" address="0x00009888" value="0x1E0A8000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x05151D37" />
+        <register type="NOA" address="0x00009888" value="0x09151547" />
+        <register type="NOA" address="0x00009888" value="0x05351C00" />
+        <register type="NOA" address="0x00009888" value="0x09351400" />
+        <register type="NOA" address="0x00009888" value="0x5D101400" />
+        <register type="NOA" address="0x00009888" value="0x5B100BBB" />
+        <register type="NOA" address="0x00009888" value="0x1D140030" />
+        <register type="NOA" address="0x00009888" value="0x61111400" />
+        <register type="NOA" address="0x00009888" value="0x1D128000" />
+        <register type="NOA" address="0x00009888" value="0x1F128000" />
+        <register type="NOA" address="0x00009888" value="0x0D150136" />
+        <register type="NOA" address="0x00009888" value="0x01150000" />
+        <register type="NOA" address="0x00009888" value="0x03164000" />
+        <register type="NOA" address="0x00009888" value="0x05164000" />
+        <register type="NOA" address="0x00009888" value="0x07164000" />
+        <register type="NOA" address="0x00009888" value="0x03350137" />
+        <register type="NOA" address="0x00009888" value="0x07350147" />
+        <register type="NOA" address="0x00009888" value="0x0B350136" />
+        <register type="NOA" address="0x00009888" value="0x01350000" />
+        <register type="NOA" address="0x00009888" value="0x01368000" />
+        <register type="NOA" address="0x00009888" value="0x03368000" />
+        <register type="NOA" address="0x00009888" value="0x05368000" />
+        <register type="NOA" address="0x00009888" value="0x17100000" />
+        <register type="NOA" address="0x00009888" value="0x55100000" />
+        <register type="NOA" address="0x00009888" value="0x57100000" />
+        <register type="NOA" address="0x00009888" value="0x47103000" />
+        <register type="NOA" address="0x00009888" value="0x49103535" />
+        <register type="NOA" address="0x00009888" value="0x4B103535" />
+        <register type="NOA" address="0x00009888" value="0x4D100535" />
+        <register type="NOA" address="0x00009888" value="0x31100000" />
+        <register type="NOA" address="0x00009884" value="0x00000003" />
+        <register type="NOA" address="0x00009888" value="0x65100002" />
+        <register type="NOA" address="0x00009884" value="0x00000000" />
+        <register type="NOA" address="0x00009888" value="0x42000001" />
+    </register_config>
+    <register_config type="OA">
+        <register type="OA" address="0x0000D920" value="0x00000000" />
+        <register type="OA" address="0x0000D900" value="0x00000000" />
+        <register type="OA" address="0x0000D904" value="0x10800000" />
+        <register type="OA" address="0x0000D910" value="0x00000000" />
+        <register type="OA" address="0x0000D914" value="0x00800000" />
+        <register type="OA" address="0x0000DC40" value="0x00010000" />
+        <register type="OA" address="0x0000D940" value="0x00001802" />
+        <register type="OA" address="0x0000D944" value="0x0000FCFF" />
+        <register type="OA" address="0x0000DC00" value="0x00001802" />
+        <register type="OA" address="0x0000DC04" value="0x0000FCFF" />
+    </register_config>
+    <register_config type="FLEX">
+        <register type="FLEX" address="0x0000E458" value="0x00832732" />
+        <register type="FLEX" address="0x0000E558" value="0x00A32932" />
     </register_config>
   </set>
 
@@ -8402,7 +10213,7 @@
     <counter name="TestCounter9 - OAR enable"
              symbol_name="Counter9"
              underscore_name="counter9"
-             description="HW test counter 9. Should be equal to 1 in OAR query mode."
+             description="HW test counter 9. Should be equal to 1 in query."
              data_type="uint64"
              units="events"
              semantic_type="event"
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
